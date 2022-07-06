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
  late Future<List<Song>> _songList;
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
      body: FutureBuilder<List<Song>>(
          future: _songList,
          builder: (context, snapshot) {
            Widget children;
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) {
                children = Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      Text(
                        snapshot.error.toString(),
                        style: const TextStyle(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            fontSize: 20),
                      )
                    ]));
              } else {
                children = snapshot.data!.isEmpty
                    ? Center(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                            Text(
                              'No Songs Loaded',
                              style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20),
                            )
                          ]))
                    : ListView.separated(
                        itemCount: snapshot.data!.length,
                        padding: const EdgeInsets.only(top: 10.0),
                        itemBuilder: (context, index) => SongCard(
                            title: snapshot.data![index].name,
                            singer: snapshot.data![index].author),
                        separatorBuilder: (context, index) => const SizedBox(
                          height: 10.0,
                        ),
                      );
              }
            } else {
              children = Center(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                    SizedBox(
                      width: 120,
                      height: 120,
                      child: CircularProgressIndicator(),
                    )
                  ]));
            }
            return children;
          }));
}
