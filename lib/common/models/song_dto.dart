import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'song_dto.freezed.dart';
part 'song_dto.g.dart';

@freezed
class SongDto with _$SongDto {
  const factory SongDto(
      {required String name,
      required String url,
      required int id,
      @Default('Неизвестен') String author}) = _SongDto;

  factory SongDto.fromJson(Map<String, dynamic> json) =>
      _$SongDtoFromJson(json);
}
