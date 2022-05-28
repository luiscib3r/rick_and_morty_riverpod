import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty_riverpod/app/data/data.dart';

part 'episode.freezed.dart';
part 'episode.g.dart';

@freezed
class Episode with _$Episode {
  const factory Episode({
    required int id,
    required String name,
    @JsonKey(name: 'air_date') required String airDate,
    required String episode,
    required List<String> characters,
    required String url,
    required DateTime created,
  }) = _Episode;

  factory Episode.fromJson(Map<String, dynamic> json) =>
      _$EpisodeFromJson(json);
}

@JsonSerializable(explicitToJson: true)
class EpisodePaginationResponse extends PaginationResponse<Episode> {
  EpisodePaginationResponse({
    required super.info,
    required super.results,
  });

  factory EpisodePaginationResponse.fromJson(Map<String, dynamic> json) =>
      _$EpisodePaginationResponseFromJson(json);
}
