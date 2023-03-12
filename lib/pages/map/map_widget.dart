import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import '../../main_lib.dart';
import 'layers/map_buttons_layer.dart';
import 'layers/map_initial_bounds_by_user_position_layer.dart';
import 'layers/map_lands_layer.dart';
import 'layers/map_tiles_layer.dart';
import 'layers/map_user_position_marker.dart';

class MapWidget extends HookConsumerWidget {
  final List<TodoLand>? lands;
  final List<TodoCountry>? countries;
  final bool hideButtons;
  final MapController controller = MapController();

  MapWidget({super.key, this.lands, this.countries, this.hideButtons = false});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final showLandState = useState(true);
    final showCountryState = useState(true);
    final selectedLandState = useState<Land?>(null);
    return LayoutBuilder(builder: (context, constraints) {
      final widgetSize = Size(constraints.maxWidth, constraints.maxHeight);
      final MapOptions mapOptions = MapOptions(
        center: LatLng(52.50347423777872, 13.272858667171855),
        rotation: 0,
        minZoom: 2,
        maxZoom: 22,
        zoom: 16,
      );

      return MapWidgetInheritedWidget(
        todoLands: lands,
        todoCountries: countries,
        hideButtons: hideButtons,
        showLandState: showLandState,
        showCountriesState: showCountryState,
        selectedCoverState: selectedLandState,
        child: FlutterMap(
          mapController: controller,
          options: mapOptions,
          nonRotatedChildren: [
            if (!hideButtons) const MapButtonsLayer(),
          ],
          children: [
            // Handle initial user position
            if (lands?.isEmpty ?? true && (countries?.isEmpty ?? true)) const MapInitialUserPositionLayer(),
            const MapTilesLayer(),
            const MapLandsLayer(),
            const MapUserPositionMarker(),
          ],
        ),
      );
    });
  }

  static MapWidgetInheritedWidget? of(BuildContext context, {bool nullOk = false}) {
    final widget = context.dependOnInheritedWidgetOfExactType<MapWidgetInheritedWidget>();
    if (nullOk || widget != null) {
      return widget;
    }
    throw FlutterError('MapWidget.of() called with a context that does not contain a MapWidget.');
  }
}

class MapWidgetInheritedWidget extends InheritedWidget {
  final List<TodoLand>? todoLands;
  final List<TodoCountry>? todoCountries;
  final bool hideButtons;
  final ValueNotifier<bool> showLandState;
  final ValueNotifier<bool> showCountriesState;
  final ValueNotifier<Land?> selectedCoverState;

  const MapWidgetInheritedWidget({
    super.key,
    this.todoLands,
    this.todoCountries,
    required this.hideButtons,
    required super.child,
    required this.showLandState,
    required this.showCountriesState,
    required this.selectedCoverState,
  });

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }
}
