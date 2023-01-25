import 'main_lib.dart';
import 'modules/travel_app.dart';

void main() {
  runApp(
    ProviderScope(
      overrides: [
      ],
      child: TravelApp(),
    ),
  );
}
