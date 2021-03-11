import 'package:SKMA/models/model.dart';
import 'package:SKMA/utils/Util.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'generate/restClient.g.dart';

@RestApi(baseUrl: Util.BASE_URL)
abstract class RestClient{
  factory RestClient(Dio dio) = _RestClient;
  
  @GET(Util.END_POINT)
  Future<Model> logIn(
      @Query("username") String username,
      @Query("password") String password,
      @Query("passwordhash") String passwordhash
      );
}