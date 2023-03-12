import 'package:flutter_map/plugin_api.dart';
import 'package:latlong2/latlong.dart';

import '../../../main_lib.dart';
import '../map_widget.dart';

class MapLandsLayer extends ConsumerWidget {
  const MapLandsLayer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mapMeta = MapWidget.of(context)!;
    final lands = mapMeta.todoLands;
    if (lands == null || !mapMeta.showLandState.value) return const SizedBox();

    final treeMarkers = lands.map((land) => Marker(
              width: 40,
              height: 40,
              point: LatLng(land.latitude, land.longitude),
              rotate: true,
              anchorPos: AnchorPos.align(AnchorAlign.top),
              rotateOrigin: const Offset(0, 20),
              builder: (context) => context.themeIcons.navigationTodo,
            ))
        .toList(growable: false);

    return MarkerLayer(
      markers: treeMarkers,
    );
  }
}
