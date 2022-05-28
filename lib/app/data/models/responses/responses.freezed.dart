// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'responses.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaginationInfo _$PaginationInfoFromJson(Map<String, dynamic> json) {
  return _PaginationInfo.fromJson(json);
}

/// @nodoc
mixin _$PaginationInfo {
  int get count => throw _privateConstructorUsedError;
  int get pages => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  String? get prev => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginationInfoCopyWith<PaginationInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationInfoCopyWith<$Res> {
  factory $PaginationInfoCopyWith(
          PaginationInfo value, $Res Function(PaginationInfo) then) =
      _$PaginationInfoCopyWithImpl<$Res>;
  $Res call({int count, int pages, String? next, String? prev});
}

/// @nodoc
class _$PaginationInfoCopyWithImpl<$Res>
    implements $PaginationInfoCopyWith<$Res> {
  _$PaginationInfoCopyWithImpl(this._value, this._then);

  final PaginationInfo _value;
  // ignore: unused_field
  final $Res Function(PaginationInfo) _then;

  @override
  $Res call({
    Object? count = freezed,
    Object? pages = freezed,
    Object? next = freezed,
    Object? prev = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      pages: pages == freezed
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      next: next == freezed
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      prev: prev == freezed
          ? _value.prev
          : prev // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_PaginationInfoCopyWith<$Res>
    implements $PaginationInfoCopyWith<$Res> {
  factory _$$_PaginationInfoCopyWith(
          _$_PaginationInfo value, $Res Function(_$_PaginationInfo) then) =
      __$$_PaginationInfoCopyWithImpl<$Res>;
  @override
  $Res call({int count, int pages, String? next, String? prev});
}

/// @nodoc
class __$$_PaginationInfoCopyWithImpl<$Res>
    extends _$PaginationInfoCopyWithImpl<$Res>
    implements _$$_PaginationInfoCopyWith<$Res> {
  __$$_PaginationInfoCopyWithImpl(
      _$_PaginationInfo _value, $Res Function(_$_PaginationInfo) _then)
      : super(_value, (v) => _then(v as _$_PaginationInfo));

  @override
  _$_PaginationInfo get _value => super._value as _$_PaginationInfo;

  @override
  $Res call({
    Object? count = freezed,
    Object? pages = freezed,
    Object? next = freezed,
    Object? prev = freezed,
  }) {
    return _then(_$_PaginationInfo(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      pages: pages == freezed
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      next: next == freezed
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      prev: prev == freezed
          ? _value.prev
          : prev // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaginationInfo implements _PaginationInfo {
  const _$_PaginationInfo(
      {required this.count,
      required this.pages,
      required this.next,
      required this.prev});

  factory _$_PaginationInfo.fromJson(Map<String, dynamic> json) =>
      _$$_PaginationInfoFromJson(json);

  @override
  final int count;
  @override
  final int pages;
  @override
  final String? next;
  @override
  final String? prev;

  @override
  String toString() {
    return 'PaginationInfo(count: $count, pages: $pages, next: $next, prev: $prev)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaginationInfo &&
            const DeepCollectionEquality().equals(other.count, count) &&
            const DeepCollectionEquality().equals(other.pages, pages) &&
            const DeepCollectionEquality().equals(other.next, next) &&
            const DeepCollectionEquality().equals(other.prev, prev));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(count),
      const DeepCollectionEquality().hash(pages),
      const DeepCollectionEquality().hash(next),
      const DeepCollectionEquality().hash(prev));

  @JsonKey(ignore: true)
  @override
  _$$_PaginationInfoCopyWith<_$_PaginationInfo> get copyWith =>
      __$$_PaginationInfoCopyWithImpl<_$_PaginationInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaginationInfoToJson(this);
  }
}

abstract class _PaginationInfo implements PaginationInfo {
  const factory _PaginationInfo(
      {required final int count,
      required final int pages,
      required final String? next,
      required final String? prev}) = _$_PaginationInfo;

  factory _PaginationInfo.fromJson(Map<String, dynamic> json) =
      _$_PaginationInfo.fromJson;

  @override
  int get count => throw _privateConstructorUsedError;
  @override
  int get pages => throw _privateConstructorUsedError;
  @override
  String? get next => throw _privateConstructorUsedError;
  @override
  String? get prev => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PaginationInfoCopyWith<_$_PaginationInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
