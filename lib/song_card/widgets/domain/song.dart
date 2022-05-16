import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'song.freezed.dart';

@freezed
abstract class User with _$User {
  const factory User(
      {required String name,
      required String url,
      required int id,
      @Default('Неизвестен') String author}) = _User;
}
