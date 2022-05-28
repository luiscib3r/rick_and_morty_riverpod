import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty_riverpod/app/data/data.dart';

part 'character.freezed.dart';
part 'character.g.dart';

@freezed
class Character with _$Character {
  factory Character({
    required int id,
    required String name,
    required String status,
    required String species,
    required String type,
    required String gender,
    required CharacterData origin,
    required CharacterData location,
    required String image,
    required List<String> episode,
    required String url,
    required DateTime created,
  }) = _Character;

  factory Character.fromJson(Map<String, dynamic> json) =>
      _$CharacterFromJson(json);
}

@JsonSerializable(explicitToJson: true)
class CharacterPaginationResponse extends PaginationResponse<Character> {
  CharacterPaginationResponse({
    required super.info,
    required super.results,
  });

  factory CharacterPaginationResponse.fromJson(Map<String, dynamic> json) =>
      _$CharacterPaginationResponseFromJson(json);
}

@freezed
class CharacterData with _$CharacterData {
  const factory CharacterData({
    required String name,
    required String url,
  }) = _CharacterData;

  factory CharacterData.fromJson(Map<String, dynamic> json) =>
      _$CharacterDataFromJson(json);
}
