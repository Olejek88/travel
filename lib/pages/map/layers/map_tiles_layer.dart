import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_map/plugin_api.dart';

import '../../../main_lib.dart';

final String mapBoxAPIToken = dotenv.env['MAPBOX_TOKEN'] ?? "";

class MapTilesLayer extends StatelessWidget {
  const MapTilesLayer({super.key});

  @override
  Widget build(BuildContext context) {
    return TileLayer(
      urlTemplate:
          "https://api.mapbox.com/styles/v1/apprimegmbh/cl9gt9ard004s15omtm0m3jhs/tiles/{z}/{x}/{y}?access_token={access_token}",
      additionalOptions: {
        "access_token": mapBoxAPIToken,
      },
      maxNativeZoom: 18,
      userAgentPackageName: 'com.example.app',
    );
  }
}
