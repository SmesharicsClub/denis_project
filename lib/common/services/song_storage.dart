class SongStorage {
  final Map<int, Map<String, dynamic>> storage = {
    1: <String, dynamic>{
      'id': 1,
      'name': 'Some name',
      'url': 'Some url',
      'author': 'Some author',
    }
  };

  Map<String, dynamic> getSongJsonById(int id) => storage[id]!;

  List<Map<String, dynamic>> getAllSongsJsons() =>
      List<Map<String, dynamic>>.from(storage.values);
}
