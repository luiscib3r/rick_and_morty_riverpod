// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episode.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EpisodePaginationResponse _$EpisodePaginationResponseFromJson(
        Map<String, dynamic> json) =>
    EpisodePaginationResponse(
      info: PaginationInfo.fromJson(json['info'] as Map<String, dynamic>),
      results: (json['results'] as List<dynamic>)
          .map((e) => Episode.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$EpisodePaginationResponseToJson(
        EpisodePaginationResponse instance) =>
    <String, dynamic>{
      'info': instance.info.toJson(),
      'results': instance.results.map((e) => e.toJson()).toList(),
    };

_$_Episode _$$_EpisodeFromJson(Map<String, dynamic> json) => _$_Episode(
      id: json['id'] as int,
      name: json['name'] as String,
      airDate: json['air_date'] as String,
      episode: json['episode'] as String,
      characters: (json['characters'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      url: json['url'] as String,
      created: DateTime.parse(json['created'] as String),
    );

Map<String, dynamic> _$$_EpisodeToJson(_$_Episode instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'air_date': instance.airDate,
      'episode': instance.episode,
      'characters': instance.characters,
      'url': instance.url,
      'created': instance.created.toIso8601String(),
    };
