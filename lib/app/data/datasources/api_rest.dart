import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:rick_and_morty_riverpod/app/data/data.dart';

part 'api_rest.g.dart';

@RestApi()
abstract class ApiRest {
  factory ApiRest(Dio dio, {String baseUrl}) = _ApiRest;

  @GET('character')
  Future<CharacterPaginationResponse> characters(
    @Query('page') int page,
  );

  @GET('character/{id}')
  Future<Character> character(@Path('id') int id);

  @GET('location')
  Future<LocationPaginationResponse> locations(
    @Query('page') int page,
  );

  @GET('location/{id}')
  Future<Location> location(@Path('id') int id);

  @GET('episode')
  Future<EpisodePaginationResponse> episodes(
    @Query('page') int page,
  );

  @GET('episode/{id}')
  Future<Episode> episode(@Path('id') int id);
}
