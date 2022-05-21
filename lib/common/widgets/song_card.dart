import 'package:flutter/material.dart';

import '../../best_music_app_icons.dart';

class SongCard extends StatelessWidget {
  const SongCard({Key? key}) : super(key: key);

  static const songCardColor = Color(0xFFF3E19F);
  static const songCardHeight = 66.0;
  static const songCardWidth = 358.0;
  static const pauseIconSize = 36.0;

  static const songCardShadow = BoxShadow(
      offset: Offset(0, 1),
      blurRadius: 20,
      spreadRadius: 4,
      color: Color(0x1A000000));

  static const _musicTextTheme = TextStyle(
      fontFamily: 'Inter',
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
      fontSize: 15,
      color: Color(0xFF000000));

  static const _authorTextTheme = TextStyle(
      fontFamily: 'Inter',
      fontWeight: FontWeight.w300,
      fontStyle: FontStyle.normal,
      fontSize: 12,
      color: Color(0xFF000000));

  Widget get _pauseIcon => Container(
        height: pauseIconSize,
        width: pauseIconSize,
        margin:
            const EdgeInsets.only(left: 15, top: 15.5, right: 16, bottom: 14.5),
        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
        decoration: const BoxDecoration(
            shape: BoxShape.circle, color: Color(0xFFF99E9E)),
        child: const Icon(
          BestMusicApp.pause,
        ),
      );

  Widget get _musicInfo => Expanded(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              margin: const EdgeInsets.only(top: 15),
              child: const Text(
                'Музика - музика',
                style: _musicTextTheme,
              )),
          Container(
              margin: const EdgeInsets.only(top: 8, bottom: 10),
              child: const Text(
                'Исполнитель - полнитель',
                style: _authorTextTheme,
              ))
        ],
      ));

  @override
  Widget build(BuildContext context) => Container(
        height: songCardHeight,
        width: songCardWidth,
        decoration: BoxDecoration(
            color: songCardColor,
            borderRadius: BorderRadiusDirectional.circular(16),
            boxShadow: const [songCardShadow]),
        child: Row(
          children: [
            _pauseIcon,
            _musicInfo,
            Container(
              margin: const EdgeInsets.only(top: 21.5, right: 14, bottom: 20.5),
              child: const Icon(BestMusicApp.menu),
            )
          ],
        ),
      );
}
