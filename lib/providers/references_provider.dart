import 'package:travel/main_lib.dart';
import 'package:travel/network/requests.dart';

final clientProvider = Provider((ref) => Dio(BaseOptions(headers: {
}, baseUrl: 'http://api.travel')));

final continents = Provider.autoDispose<Future<List<Continent>>>((ref) {
  return RestClient(ref.read(clientProvider)).getContinents();
});

final continentsProvider = FutureProvider<List<Continent>>((ref) async {
  final cont  = await ref.read(continents);
  return await ref.read(continents);
});