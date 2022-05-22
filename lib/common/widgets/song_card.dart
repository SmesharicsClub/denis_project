import 'package:flutter/material.dart';

import '../../best_music_app_icons.dart';

class SongCard extends StatelessWidget {
  const SongCard({Key? key}) : super(key: key);

  Color get _songCardColor => const Color(0xFFF3E19F);
  double get _songCardHeight => 66.0;
  double get _pauseIconSize => 36.0;

  BoxShadow get _songCardShadow => BoxShadow(
      offset: const Offset(0, 1),
      blurRadius: 20,
      spreadRadius: 4,
      color: const Color(0x00000000).withOpacity(0.1));

  @override
  Widget build(BuildContext context) => Container(
        height: _songCardHeight,
        margin: const EdgeInsets.symmetric(horizontal: 8.5),
        decoration: BoxDecoration(
            color: _songCardColor,
            borderRadius: BorderRadiusDirectional.circular(16),
            boxShadow: [_songCardShadow]),
        child: Row(
          children: [
            Container(
              height: _pauseIconSize,
              width: _pauseIconSize,
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
                    child: const Text(
                      'Музика - музика',
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal,
                          fontSize: 15,
                          color: Color(0xFF000000)),
                    )),
                Container(
                    margin: const EdgeInsets.only(top: 8, bottom: 10),
                    child: const Text(
                      'Исполнитель - полнитель',
                      style: TextStyle(
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
