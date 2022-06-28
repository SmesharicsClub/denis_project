// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'song_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SongDto _$$_SongDtoFromJson(Map<String, dynamic> json) => _$_SongDto(
      name: json['name'] as String,
      url: json['url'] as String,
      id: json['id'] as int,
      author: json['author'] as String? ?? 'Неизвестен',
    );

Map<String, dynamic> _$$_SongDtoToJson(_$_SongDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
      'id': instance.id,
      'author': instance.author,
    };
