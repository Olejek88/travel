import 'package:collection/collection.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:latlong2/latlong.dart';
import 'package:location/location.dart' show LocationData;

import '../../main_lib.dart';
import 'dart:math' as math;

import '../../models/geo_location.dart';

extension GeoLocationExtension on GeoLocation {
  LatLng get latLng => LatLng(lat, lon);
}

extension LatLngBoundsExtension on LatLngBounds {
  CenterZoom getBoundsCenterZoom(Size widgetSize, FitBoundsOptions options) {
    const crs = Epsg3857();
    final paddingTL = CustomPoint<double>(options.padding.left, options.padding.top);
    final paddingBR = CustomPoint<double>(options.padding.right, options.padding.bottom);

    final paddingTotalXY = paddingTL + paddingBR;

    var zoom = getBoundsZoom(widgetSize, paddingTotalXY, inside: options.inside);
    zoom = math.min(options.maxZoom, zoom);

    final paddingOffset = (paddingBR - paddingTL) / 2;
    final swPoint = crs.latLngToPoint(southWest!, zoom);
    final nePoint = crs.latLngToPoint(northEast!, zoom);
    final center = crs.pointToLatLng((swPoint + nePoint) / 2 + paddingOffset, zoom)!;
    return CenterZoom(
      center: center,
      zoom: zoom,
    );
  }

  double getBoundsZoom(Size widgetSize, CustomPoint<double> padding,
      {bool inside = false}) {
    const crs = Epsg3857();
    double zoom = 1;
    const min = 0.0;
    const max = 15.0;
    final nw = northWest;
    final se = southEast;
    var size = CustomPoint(widgetSize.width, widgetSize.height) - padding;
    // Prevent negative size which results in NaN zoom value later on in the calculation
    size = CustomPoint(math.max(0.0, size.x), math.max(0.0, size.y));
    final boundsSize = Bounds(crs.latLngToPoint(se, zoom), crs.latLngToPoint(nw, zoom)).size;
    final scaleX = size.x / boundsSize.x;
    final scaleY = size.y / boundsSize.y;
    final scale = inside ? math.max(scaleX, scaleY) : math.min(scaleX, scaleY);

    zoom = crs.zoom(scale * crs.scale(zoom)) as double;

    return math.max(min, math.min(max, zoom));
  }
}

extension FlutterMapStateExtension on FlutterMapState {
  void moveToFitBoundsAnimated(
      LatLngBounds bounds, {
        FitBoundsOptions options = const FitBoundsOptions(padding: EdgeInsets.all(50), inside: false),
      }) {
    final initialRotation = mapState.rotation;
    mapState.rotate(0, source: MapEventSource.fitBounds);
    final target = mapState.getBoundsCenterZoom(bounds, options);
    mapState.rotate(initialRotation, source: MapEventSource.fitBounds);
    mapState.moveAnimated(
        toCenter: target.center, toZoom: target.zoom, toRotation: 0, source: MapEventSource.fitBounds);
  }

  void moveAnimated({
    LatLng? toCenter,
    double? toZoom,
    double? toRotation,
    MapEventSource source = MapEventSource.custom,
    String? id,
  }) {
    final latTween = Tween<double>(begin: mapController.center.latitude, end: toCenter?.latitude ?? center.latitude);
    final lngTween = Tween<double>(begin: mapController.center.longitude, end: toCenter?.longitude ?? center.longitude);
    final zoomTween = Tween<double>(begin: mapController.zoom, end: toZoom ?? zoom);
    final rotationTween = Tween<double>(begin: mapController.rotation, end: toRotation ?? rotation);

    final controller = AnimationController(duration: const Duration(milliseconds: 500), vsync: this);
    final Animation<double> animation = CurvedAnimation(parent: controller, curve: Curves.fastOutSlowIn);

    controller.addListener(() {
      mapController.moveAndRotate(LatLng(latTween.evaluate(animation), lngTween.evaluate(animation)),
          zoomTween.evaluate(animation), rotationTween.evaluate(animation));
    });

    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller.dispose();
      } else if (status == AnimationStatus.dismissed) {
        controller.dispose();
      }
    });

    controller.forward();
  }
}

LatLngBounds? initialMapBounds(List<TodoLand>? lands, LatLng? userPosition) {
  final landLocations = lands?.map((land) => LatLng(land.latitude, land.longitude)).whereNotNull() ?? [];
  final userPositionArray = [userPosition].whereNotNull();
  final locations = [...landLocations, ...userPositionArray];
  if (locations.isEmpty) return null;
  final bounds = LatLngBounds.fromPoints(locations);
  return bounds;
}

extension LocationDataExtension on LocationData {
  LatLng get latLng => LatLng(latitude ?? 0, longitude ?? 0);
}
