import 'package:flutter/material.dart';

import '../constants/common_colors.dart';
import '../models/song.dart';
import '../widgets/song_card.dart';
import 'main_page_assets.dart';

class MainPage extends StatefulWidget {
  const MainPage({required this.title, Key? key}) : super(key: key);

  final String title;

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final songList = const [
    Song(id: 0, name: 'Symphony 1', url: 'Some url 1', author: 'Brahms'),
    Song(id: 1, name: 'Symphony 2', url: 'Some url 2', author: 'Brahms'),
    Song(id: 2, name: 'Symphony 3', url: 'Some url 3', author: 'Brahms')
  ];

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
        itemCount: songList.length,
        padding: const EdgeInsets.only(top: 10.0),
        itemBuilder: (context, index) => SongCard(
            title: songList[index].name, singer: songList[index].author),
        separatorBuilder: (context, index) => const SizedBox(
          height: 10.0,
        ),
      ));
}
