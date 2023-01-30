import 'package:retrofit/retrofit.dart';
import '../main_lib.dart';

part 'requests.g.dart';

@RestApi(baseUrl: "http://api.travel/")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("/continent")
  Future<List<Continent>> getContinents();
}