import '../models/song.dart';
import '../models/song_dto.dart';
import '../services/song_storage.dart';

class SongRepository {
  Song getSongById(int id) {
    final songDto = SongDto.fromJson(SongStorage().getSongJsonById(id));

    return Song(
        name: songDto.name,
        url: songDto.url,
        id: songDto.id,
        author: songDto.author);
  }

  List<Song> getAllSongs() => SongStorage()
      .getAllSongsJsons()
      .map((songJson) => SongDto.fromJson(songJson))
      .map((songDto) => Song(
          name: songDto.name,
          url: songDto.url,
          id: songDto.id,
          author: songDto.author))
      .toList();
}
