import 'package:retrofit/retrofit.dart';
import '../main_lib.dart';

part 'requests.g.dart';

@RestApi(baseUrl: "http://api.travel/")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("/continent")
  Future<List<Continent>> getContinents();

  @GET("/country")
  Future<List<Country>> getCountries();

  @GET("/land")
  Future<List<Land>> getLands();

  @GET("/todo-continent")
  Future<List<TodoContinent>> getTodoContinents();

  @GET("/todo-country")
  Future<List<TodoCountry>> getTodoCountries();

  @GET("/todo-land")
  Future<List<TodoLand>> getTodoLands();

  @GET("/todo-continent-completed")
  Future<List<TodoContinent>> getTodoContinentsCompleted();

  @GET("/todo-country-completed")
  Future<List<TodoCountry>> getTodoCountriesCompleted();

  @GET("/todo-land-completed")
  Future<List<TodoLand>> getTodoLandsCompleted();

  @GET("/user")
  Future<List<User>> getUsers();

  @GET("/user-continent-progress")
  Future<List<UserContinentProgress>> getUserContinentProgress();

  @GET("/user-country-progress")
  Future<List<UserCountryProgress>> getUserCountryProgress();

  @GET("/user-land-progress")
  Future<List<UserLandProgress>> getUserLandProgress();
}