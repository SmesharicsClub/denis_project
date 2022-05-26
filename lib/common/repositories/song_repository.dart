import '../services/song_storage.dart';

class SongRepository {
  String? getSongById(int id) => SongStorage().getSongJsonById(id);

  List<String>? getAllSongs() => SongStorage().getAllSongsJsons();
}
