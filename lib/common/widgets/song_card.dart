import 'package:flutter/material.dart';

import '../../best_music_app_icons.dart';

class SongCard extends StatelessWidget {
  const SongCard({required this.title, required this.singer, Key? key})
      : super(key: key);

  final String title;
  final String singer;

  @override
  Widget build(BuildContext context) => Container(
        height: 66.0,
        margin: const EdgeInsets.symmetric(horizontal: 8.5),
        decoration: BoxDecoration(
            color: const Color(0xFFF3E19F),
            borderRadius: BorderRadiusDirectional.circular(16),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0, 1),
                  blurRadius: 20,
                  spreadRadius: 4,
                  color: const Color(0x00000000).withOpacity(0.1))
            ]),
        child: Row(
          children: [
            Container(
              height: 36.0,
              width: 36.0,
              margin: const EdgeInsets.only(
                  left: 15, top: 15.5, right: 16, bottom: 14.5),
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Color(0xFFF99E9E)),
              child: const Icon(
                BestMusicApp.pause,
              ),
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    margin: const EdgeInsets.only(top: 15),
                    child: Text(
                      title,
                      style: const TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal,
                          fontSize: 15,
                          color: Color(0xFF000000)),
                    )),
                Container(
                    margin: const EdgeInsets.only(top: 8, bottom: 10),
                    child: Text(
                      singer,
                      style: const TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w300,
                          fontStyle: FontStyle.normal,
                          fontSize: 12,
                          color: Color(0xFF000000)),
                    ))
              ],
            )),
            Container(
              margin: const EdgeInsets.only(top: 21.5, right: 14, bottom: 20.5),
              child: const Icon(BestMusicApp.menu),
            )
          ],
        ),
      );
}
