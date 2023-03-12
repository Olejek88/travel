import 'package:flutter_compass/flutter_compass.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:latlong2/latlong.dart';
import 'package:location/location.dart' as geoLocation;

import '../../../main_lib.dart';
import '../../../providers/position_provider.dart';

class MapUserPositionMarker extends HookConsumerWidget {
  const MapUserPositionMarker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mapState = FlutterMapState.maybeOf(context)!;
    final positionProvider = ref.watch(positionStateProvider);
    final previousPositionState = useState<geoLocation.LocationData?>(null);

    final currentPosition = positionProvider;
    final previousPosition = previousPositionState.value;

    final animationController = useAnimationController(duration: const Duration(seconds: 1));

    previousPositionState.value = currentPosition;
    final hasChanged = currentPosition?.longitude != previousPosition?.longitude ||
        currentPosition?.latitude != previousPosition?.latitude;

    final posBounds = LatLngBounds.fromPoints(
        [LatLng(previousPosition?.latitude ?? 0.0, previousPosition?.longitude ?? 0.0)].toList(growable: false));
    final isVisible = posBounds.isValid && mapState.bounds.isOverlapping(posBounds);

    if (hasChanged && isVisible) {
      animationController.reset();
      animationController.animateTo(1);
    }

    return IgnorePointer(
      child: Stack(children: <Widget>[
        if (currentPosition != null && isVisible)
          _positionedForOverlay(
              context, ref, mapState, currentPosition, previousPosition ?? currentPosition, animationController),
      ]),
    );
  }

  Widget _positionedForOverlay(
      BuildContext context,
      WidgetRef ref,
      FlutterMapState map,
      geoLocation.LocationData currentUserPosition,
      geoLocation.LocationData previousUserPosition,
      AnimationController animationController) {
    final zoomScale = map.getZoomScale(map.zoom, map.zoom);
    final pixelOrigin = map.pixelOrigin;

    final currentPosition = map
            .project(LatLng(currentUserPosition.latitude ?? 0.0, currentUserPosition.longitude ?? 0.0))
            .multiplyBy(zoomScale) -
        pixelOrigin;
    final previousPosition = map
            .project(LatLng(previousUserPosition.latitude ?? 0.0, previousUserPosition.longitude ?? 0.0))
            .multiplyBy(zoomScale) -
        pixelOrigin;

    final measureMeterStart = LatLng(0, 0);
    final measureMeterEnd = LatLng(0.00001, 0);
    final measureMeterStartPosition = map.project(measureMeterStart).multiplyBy(zoomScale) - pixelOrigin;
    final measureMeterEndPosition = map.project(measureMeterEnd).multiplyBy(zoomScale) - pixelOrigin;

    final pixelPerMeter = measureMeterStartPosition.distanceTo(measureMeterEndPosition);

    final accuracyDiameter = pixelPerMeter * (currentUserPosition.accuracy ?? 0);
    final previousAccuracyDiameter = pixelPerMeter * (previousUserPosition.accuracy ?? 0);

    double headingSize = 80;
    double pointMarkerSize = 20;

    return LayoutBuilder(builder: (context, constraints) {
      final Size biggest = constraints.biggest;
      return Stack(
        children: [
          PositionedTransition(
              rect: RelativeRectTween(
                      begin: RelativeRect.fromSize(
                          Rect.fromLTWH(
                              previousPosition.x.toDouble() - (previousAccuracyDiameter / 2),
                              previousPosition.y.toDouble() - (previousAccuracyDiameter / 2),
                              previousAccuracyDiameter,
                              previousAccuracyDiameter),
                          biggest),
                      end: RelativeRect.fromSize(
                          Rect.fromLTWH(
                              currentPosition.x.toDouble() - (accuracyDiameter / 2),
                              currentPosition.y.toDouble() - (accuracyDiameter / 2),
                              accuracyDiameter,
                              accuracyDiameter),
                          biggest))
                  .animate(animationController),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.1),
                  border: Border.all(width: 0.5, color: Colors.blue.withOpacity(0.1)),
                  shape: BoxShape.circle,
                ),
              )),
          PositionedTransition(
              rect: RelativeRectTween(
                      begin: RelativeRect.fromSize(
                          Rect.fromLTWH(previousPosition.x.toDouble() - (headingSize / 2),
                              previousPosition.y.toDouble() - (headingSize / 2), headingSize, headingSize),
                          biggest),
                      end: RelativeRect.fromSize(
                          Rect.fromLTWH(currentPosition.x.toDouble() - (headingSize / 2),
                              currentPosition.y.toDouble() - (headingSize / 2), headingSize, headingSize),
                          biggest))
                  .animate(animationController),
              child: StreamBuilder(
                  stream: FlutterCompass.events,
                  builder: (context, AsyncSnapshot<CompassEvent> snapshot) {
                    final heading = snapshot.data?.heading;
                    if (snapshot.hasError || snapshot.connectionState == ConnectionState.waiting || heading == null) {
                      return Container(
                        color: Colors.transparent,
                      );
                    }

                    final headingRadians = heading / 180 * 3.14;

                    return Transform.rotate(
                        angle: headingRadians,
                        child: CustomPaint(
                          painter: HeadingArcPainter(),
                        ));
                  })),
          PositionedTransition(
              rect: RelativeRectTween(
                      begin: RelativeRect.fromSize(
                          Rect.fromLTWH(previousPosition.x.toDouble() - (pointMarkerSize / 2),
                              previousPosition.y.toDouble() - (pointMarkerSize / 2), pointMarkerSize, pointMarkerSize),
                          biggest),
                      end: RelativeRect.fromSize(
                          Rect.fromLTWH(currentPosition.x.toDouble() - (pointMarkerSize / 2),
                              currentPosition.y.toDouble() - (pointMarkerSize / 2), pointMarkerSize, pointMarkerSize),
                          biggest))
                  .animate(animationController),
              child: const UserLocationMarker()),
        ],
      );
    });
  }
}

class HeadingArcPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      // ..color = Colors.blue.withOpacity(0.1)
      ..shader = RadialGradient(
        colors: [
          Colors.blue.withOpacity(0.8),
          Colors.blue.withOpacity(0),
        ],
      ).createShader(Rect.fromCircle(
        center: Offset(size.width / 2, size.height / 2),
        radius: size.width / 2,
      ))
      ..style = PaintingStyle.fill
      ..strokeWidth = 0;

    const radianToTop = -90 / 180 * 3.14;
    const angle = 45 / 180 * 3.14;

    //draw arc
    canvas.drawArc(
        const Offset(0, 0) & size,
        radianToTop - (angle / 2), //radians
        angle, //radians
        true,
        paint1);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

class UserLocationMarker extends HookConsumerWidget {
  /// The color of the marker.
  final Color color;

  /// Typically the marker's icon.
  final Widget? child;

  /// Create a DefaultLocationMarker.
  const UserLocationMarker({
    Key? key,
    this.color = const Color.fromARGB(0xFF, 0x21, 0x96, 0xF3),
    this.child,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final animation = useAnimationController(duration: const Duration(seconds: 2));
    animation.repeat(reverse: true);

    return DecoratedBox(
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      child: Padding(
        padding: const EdgeInsets.all(2),
        child: ScaleTransition(
          scale: CurvedAnimation(parent: animation, curve: Curves.easeInOut).drive(Tween(begin: 1, end: 0.8)),
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
