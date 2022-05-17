import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'song.freezed.dart';

@freezed
class Song with _$Song {
  const factory Song(
      {required String name,
      required String url,
      required int id,
      @Default('Неизвестен') String author}) = _Song;
}
