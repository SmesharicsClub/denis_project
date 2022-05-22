import 'package:flutter/material.dart';

import 'profile_page_colors.dart';
import 'profile_page_strings.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({required this.title, Key? key}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: ProfilePageColors.appBarBackgroundColor,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Image.network(ProfilePageStrings.imageUrl),
      ));
}
