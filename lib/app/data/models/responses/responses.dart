import 'package:freezed_annotation/freezed_annotation.dart';

part 'responses.freezed.dart';
part 'responses.g.dart';

class PaginationResponse<T> {
  PaginationResponse({
    required this.info,
    required this.results,
  });

  final PaginationInfo info;
  final List<T> results;
}

@freezed
class PaginationInfo with _$PaginationInfo {
  const factory PaginationInfo({
    required int count,
    required int pages,
    required String? next,
    required String? prev,
  }) = _PaginationInfo;

  factory PaginationInfo.fromJson(Map<String, dynamic> json) =>
      _$PaginationInfoFromJson(json);
}
