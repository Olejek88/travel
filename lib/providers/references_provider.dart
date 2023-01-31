import 'package:travel/main_lib.dart';
import 'package:travel/network/requests.dart';

final clientProvider = Provider((ref) => Dio(BaseOptions(headers: {
}, baseUrl: 'http://api.travel')));

final continents = Provider.autoDispose<Future<List<Continent>>>((ref) {
  return RestClient(ref.read(clientProvider)).getContinents();
});
final countries = Provider.autoDispose<Future<List<Country>>>((ref) {
  return RestClient(ref.read(clientProvider)).getCountries();
});
final lands = Provider.autoDispose<Future<List<Land>>>((ref) {
  return RestClient(ref.read(clientProvider)).getLands();
});
final todoContinents = Provider.autoDispose<Future<List<TodoContinent>>>((ref) {
  return RestClient(ref.read(clientProvider)).getTodoContinents();
});
final todoCountries = Provider.autoDispose<Future<List<TodoCountry>>>((ref) {
  return RestClient(ref.read(clientProvider)).getTodoCountries();
});
final todoLands = Provider.autoDispose<Future<List<TodoLand>>>((ref) {
  return RestClient(ref.read(clientProvider)).getTodoLands();
});

final continentsProvider = FutureProvider<List<Continent>>((ref) async {
  return await ref.read(continents);
});
final countriesProvider = FutureProvider<List<Country>>((ref) async {
  return await ref.read(countries);
});
final landsProvider = FutureProvider<List<Land>>((ref) async {
  return await ref.read(lands);
});
final todoContinentsProvider = FutureProvider<List<TodoContinent>>((ref) async {
  return await ref.read(todoContinents);
});
final todoCountriesProvider = FutureProvider<List<TodoCountry>>((ref) async {
  return await ref.read(todoCountries);
});
final todoLandsProvider = FutureProvider<List<TodoLand>>((ref) async {
  return await ref.read(todoLands);
});
