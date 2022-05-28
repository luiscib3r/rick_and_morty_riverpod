import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty_riverpod/app/data/data.dart';

part 'location.freezed.dart';
part 'location.g.dart';

@freezed
class Location with _$Location {
  const factory Location({
    required int id,
    required String name,
    required String type,
    required String dimension,
    required List<String> residents,
    required String url,
    required DateTime created,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}

@JsonSerializable(explicitToJson: true)
class LocationPaginationResponse extends PaginationResponse<Location> {
  LocationPaginationResponse({
    required super.info,
    required super.results,
  });

  factory LocationPaginationResponse.fromJson(Map<String, dynamic> json) =>
      _$LocationPaginationResponseFromJson(json);
}
