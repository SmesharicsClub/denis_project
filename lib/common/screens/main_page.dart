import 'package:flutter/material.dart';

import '../constants/colors.dart';
import 'main_page_assets.dart';
import 'main_page_colors.dart';
import 'main_page_constants.dart';
import 'main_page_strings.dart';

const TextStyle _thirdContainerTextStyle = TextStyle(
    color: Color(0xFFF70153),
    fontSize: 35,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.italic,
    fontFamily: 'Arial');

class MainPage extends StatefulWidget {
  const MainPage({required this.title, Key? key}) : super(key: key);

  final String title;

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final containers = [
    Container(
        height: MainPageConstants.firstContainerHeight,
        color: MainPageColors.firstContainerColor),
    Container(
      height: MainPageConstants.secondContainerHeight,
      child: const Text(MainPageStrings.secondContainerText),
    ),
    Container(
      height: MainPageConstants.thirdContainerHeight,
      decoration: BoxDecoration(
          color: MainPageColors.thirdContainerBoxDecorationColor,
          borderRadius: BorderRadiusDirectional.circular(
              MainPageConstants.thirdContainerBorderRadius)),
      child: const Center(
          child: Text(
        MainPageStrings.thirdContainerText,
        style: _thirdContainerTextStyle,
        textAlign: TextAlign.center,
      )),
    )
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
          itemCount: containers.length,
          itemBuilder: (context, index) => containers[index],
          separatorBuilder: (context, index) => const SizedBox(
              height: MainPageConstants.sizedBoxBetweenContainersHeight)));
}
