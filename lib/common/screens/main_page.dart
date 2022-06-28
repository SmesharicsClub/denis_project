import 'package:flutter/material.dart';

import '../constants/common_colors.dart';
import '../models/song.dart';
import '../repositories/song_repository.dart';
import '../widgets/song_card.dart';
import 'main_page_assets.dart';

class MainPage extends StatefulWidget {
  const MainPage({required this.title, Key? key}) : super(key: key);

  final String title;

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late List<Song> _songList;
  final _songRepo = SongRepository();

  @override
  void initState() {
    _songList = _songRepo.getAllSongs();
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: CommonColors.appBarBackgroundColor,
        actions: [
          IconButton(
              onPressed: () => Navigator.pushNamed(context, '/profile'),
              icon: Image.asset(MainPageAssets.buttonImage))
        ],
      ),
      body: ListView.separated(
        itemCount: _songList.length,
        padding: const EdgeInsets.only(top: 10.0),
        itemBuilder: (context, index) => SongCard(
            title: _songList[index].name, singer: _songList[index].author),
        separatorBuilder: (context, index) => const SizedBox(
          height: 10.0,
        ),
      ));
}
