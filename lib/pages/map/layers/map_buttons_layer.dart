import 'package:flutter/material.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:travel/shared/extensions/model_extensions.dart';

import '../../../main_lib.dart';
import '../map_widget.dart';

class MapButtonsLayer extends ConsumerWidget {
  final MapController controller;
  const MapButtonsLayer({super.key, required this.controller});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mapMeta = MapWidget.of(context)!;
    return HStack(
      padding: const EdgeInsets.all(30),
      children: [
        const Spacer(),
        VStack(
          spacing: 16,
          children: [
            const Spacer(),
            if (mapMeta.todoLands?.isNotEmpty ?? false)
              FloatingActionButton(
                heroTag: "landsButton",
                foregroundColor: Colors.black,
                backgroundColor: mapMeta.showLandState.value
                    ? AppColors.accentText.withOpacity(0.6)
                    : Colors.white.withOpacity(0.6),
                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12.0))),
                child: context.themeIcons.navigationRating,
                onPressed: () async {
                  mapMeta.showLandState.value = !mapMeta.showLandState.value;
                  mapCenterBounds(context, true);
                },
              ),
            FloatingActionButton(
              heroTag: "plusButton",
              foregroundColor: Colors.black,
              backgroundColor: mapMeta.showLandState.value
                  ? AppColors.accentText.withOpacity(0.6)
                  : Colors.white.withOpacity(0.6),
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12.0))),
              child: const Icon(Icons.add),
              onPressed: () async {
                var currentZoom = controller.zoom + 1;
                controller.move(controller.center, currentZoom);
              },
            ),
            FloatingActionButton(
              heroTag: "minusButton",
              foregroundColor: Colors.black,
              backgroundColor: mapMeta.showLandState.value
                  ? AppColors.accentText.withOpacity(0.6)
                  : Colors.white.withOpacity(0.6),
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12.0))),
              child: const Icon(Icons.remove),
              onPressed: () async {
                var currentZoom = controller.zoom - 1;
                controller.move(controller.center, currentZoom);
              },
            ),
          ],
        )
      ],
    );
  }
}

void mapCenterBounds(BuildContext context, bool animated) {
  final mapMeta = MapWidget.of(context)!;
  final mapState = FlutterMapState.maybeOf(context)!;
  if (!mapMeta.showLandState.value && !mapMeta.showCountriesState.value) return;
  final todoLands = mapMeta.showCountriesState.value ? mapMeta.todoLands : null;
  final todoCountries = mapMeta.showLandState.value ? mapMeta.todoCountries : null;
  //final bounds = initialMapBounds(covers, trees, null);
  const bounds = null;
  final centerZoom = bounds?.getBoundsCenterZoom(
    Size(mapState.size.x, mapState.size.y),
    const FitBoundsOptions(padding: EdgeInsets.symmetric(horizontal: 50, vertical: 150), inside: false),
  );
  if (centerZoom == null) return;
  if (animated) {
    mapState.moveAnimated(toCenter: centerZoom.center, toZoom: centerZoom.zoom, toRotation: 0);
  } else {
    mapState.move(centerZoom.center, centerZoom.zoom, source: MapEventSource.custom);
  }
}