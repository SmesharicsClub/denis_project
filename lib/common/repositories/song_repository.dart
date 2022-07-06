import '../models/song.dart';
import '../models/song_dto.dart';
import '../services/song_storage.dart';

class SongRepository {
  final _songStorage = SongStorage();

  Future<Song> getSongById(int id) {
    final songDto = SongDto.fromJson(_songStorage.getSongJsonById(id));

    return Future(() => Song(
        name: songDto.name,
        url: songDto.url,
        id: songDto.id,
        author: songDto.author));
  }

  Future<List<Song>> getAllSongs() => Future(() => _songStorage
      .getAllSongsJsons()
      .map((songJson) => SongDto.fromJson(songJson))
      .map((songDto) => Song(
          name: songDto.name,
          url: songDto.url,
          id: songDto.id,
          author: songDto.author))
      .toList());
}
