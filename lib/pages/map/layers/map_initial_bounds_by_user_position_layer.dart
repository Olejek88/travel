import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:latlong2/latlong.dart';
import 'package:travel/shared/extensions/model_extensions.dart';

import '../../../main_lib.dart';
import '../../../providers/position_provider.dart';

class MapInitialUserPositionLayer extends HookConsumerWidget {
  const MapInitialUserPositionLayer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final future = useMemoized(determineCurrentPosition);
    final position = useFuture(future).data;
    final wasSet = useState(false);
    if (position != null && !wasSet.value) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        FlutterMapState.maybeOf(context)!
            .moveAnimated(toCenter: LatLng(position.latitude, position.longitude), toZoom: 15, toRotation: 0);
        wasSet.value = true;
      });
    }
    return const SizedBox();
  }
}
