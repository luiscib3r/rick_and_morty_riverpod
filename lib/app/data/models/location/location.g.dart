// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocationPaginationResponse _$LocationPaginationResponseFromJson(
        Map<String, dynamic> json) =>
    LocationPaginationResponse(
      info: PaginationInfo.fromJson(json['info'] as Map<String, dynamic>),
      results: (json['results'] as List<dynamic>)
          .map((e) => Location.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LocationPaginationResponseToJson(
        LocationPaginationResponse instance) =>
    <String, dynamic>{
      'info': instance.info.toJson(),
      'results': instance.results.map((e) => e.toJson()).toList(),
    };

_$_Location _$$_LocationFromJson(Map<String, dynamic> json) => _$_Location(
      id: json['id'] as int,
      name: json['name'] as String,
      type: json['type'] as String,
      dimension: json['dimension'] as String,
      residents:
          (json['residents'] as List<dynamic>).map((e) => e as String).toList(),
      url: json['url'] as String,
      created: DateTime.parse(json['created'] as String),
    );

Map<String, dynamic> _$$_LocationToJson(_$_Location instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'dimension': instance.dimension,
      'residents': instance.residents,
      'url': instance.url,
      'created': instance.created.toIso8601String(),
    };
