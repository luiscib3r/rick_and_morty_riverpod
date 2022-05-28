// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CharacterPaginationResponse _$CharacterPaginationResponseFromJson(
        Map<String, dynamic> json) =>
    CharacterPaginationResponse(
      info: PaginationInfo.fromJson(json['info'] as Map<String, dynamic>),
      results: (json['results'] as List<dynamic>)
          .map((e) => Character.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CharacterPaginationResponseToJson(
        CharacterPaginationResponse instance) =>
    <String, dynamic>{
      'info': instance.info.toJson(),
      'results': instance.results.map((e) => e.toJson()).toList(),
    };

_$_Character _$$_CharacterFromJson(Map<String, dynamic> json) => _$_Character(
      id: json['id'] as int,
      name: json['name'] as String,
      status: json['status'] as String,
      species: json['species'] as String,
      type: json['type'] as String,
      gender: json['gender'] as String,
      origin: CharacterData.fromJson(json['origin'] as Map<String, dynamic>),
      location:
          CharacterData.fromJson(json['location'] as Map<String, dynamic>),
      image: json['image'] as String,
      episode:
          (json['episode'] as List<dynamic>).map((e) => e as String).toList(),
      url: json['url'] as String,
      created: DateTime.parse(json['created'] as String),
    );

Map<String, dynamic> _$$_CharacterToJson(_$_Character instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': instance.status,
      'species': instance.species,
      'type': instance.type,
      'gender': instance.gender,
      'origin': instance.origin,
      'location': instance.location,
      'image': instance.image,
      'episode': instance.episode,
      'url': instance.url,
      'created': instance.created.toIso8601String(),
    };

_$_CharacterData _$$_CharacterDataFromJson(Map<String, dynamic> json) =>
    _$_CharacterData(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$_CharacterDataToJson(_$_CharacterData instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };
