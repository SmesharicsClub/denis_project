class SongStorage {
  final Map<int, String> storage = {
    1: '''
    { 
      "id": 1,
      "name": "Some name",
      "url": "Some url",
      "author": "Some author",
    }'''
  };

  String? getSongJsonById(int id) =>
      storage.containsKey(id) ? storage[id] : null;

  List<String>? getAllSongsJsons() =>
      storage.isEmpty ? null : List<String>.from(storage.values);
}
