// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'song_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SongDto _$SongDtoFromJson(Map<String, dynamic> json) {
  return _SongDto.fromJson(json);
}

/// @nodoc
mixin _$SongDto {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 'Неизвестен')
  String get author => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SongDtoCopyWith<SongDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SongDtoCopyWith<$Res> {
  factory $SongDtoCopyWith(SongDto value, $Res Function(SongDto) then) =
      _$SongDtoCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String url,
      int id,
      @JsonKey(defaultValue: 'Неизвестен') String author});
}

/// @nodoc
class _$SongDtoCopyWithImpl<$Res> implements $SongDtoCopyWith<$Res> {
  _$SongDtoCopyWithImpl(this._value, this._then);

  final SongDto _value;
  // ignore: unused_field
  final $Res Function(SongDto) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
    Object? id = freezed,
    Object? author = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_SongDtoCopyWith<$Res> implements $SongDtoCopyWith<$Res> {
  factory _$$_SongDtoCopyWith(
          _$_SongDto value, $Res Function(_$_SongDto) then) =
      __$$_SongDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String url,
      int id,
      @JsonKey(defaultValue: 'Неизвестен') String author});
}

/// @nodoc
class __$$_SongDtoCopyWithImpl<$Res> extends _$SongDtoCopyWithImpl<$Res>
    implements _$$_SongDtoCopyWith<$Res> {
  __$$_SongDtoCopyWithImpl(_$_SongDto _value, $Res Function(_$_SongDto) _then)
      : super(_value, (v) => _then(v as _$_SongDto));

  @override
  _$_SongDto get _value => super._value as _$_SongDto;

  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
    Object? id = freezed,
    Object? author = freezed,
  }) {
    return _then(_$_SongDto(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SongDto with DiagnosticableTreeMixin implements _SongDto {
  const _$_SongDto(
      {required this.name,
      required this.url,
      required this.id,
      @JsonKey(defaultValue: 'Неизвестен') required this.author});

  factory _$_SongDto.fromJson(Map<String, dynamic> json) =>
      _$$_SongDtoFromJson(json);

  @override
  final String name;
  @override
  final String url;
  @override
  final int id;
  @override
  @JsonKey(defaultValue: 'Неизвестен')
  final String author;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SongDto(name: $name, url: $url, id: $id, author: $author)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SongDto'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('url', url))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('author', author));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SongDto &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.author, author));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(author));

  @JsonKey(ignore: true)
  @override
  _$$_SongDtoCopyWith<_$_SongDto> get copyWith =>
      __$$_SongDtoCopyWithImpl<_$_SongDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SongDtoToJson(this);
  }
}

abstract class _SongDto implements SongDto {
  const factory _SongDto(
          {required final String name,
          required final String url,
          required final int id,
          @JsonKey(defaultValue: 'Неизвестен') required final String author}) =
      _$_SongDto;

  factory _SongDto.fromJson(Map<String, dynamic> json) = _$_SongDto.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get url => throw _privateConstructorUsedError;
  @override
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(defaultValue: 'Неизвестен')
  String get author => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SongDtoCopyWith<_$_SongDto> get copyWith =>
      throw _privateConstructorUsedError;
}
