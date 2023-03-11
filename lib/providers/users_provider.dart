import 'package:travel/main_lib.dart';
import 'package:travel/network/requests.dart';
import 'package:travel/providers/references_provider.dart';

final users = Provider.autoDispose<Future<List<User>>>((ref) {
  return RestClient(ref.read(clientProvider)).getUsers();
});
final usersProvider = FutureProvider<List<User>>((ref) async {
  return await ref.read(users);
});
