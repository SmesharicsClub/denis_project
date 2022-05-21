import 'package:flutter/material.dart';

const Color _appBarBackgroundColor = Color(0xFF121212);
const String _imageUrl = r'https://picsum.photos/250?image=9';

class ProfilePage extends StatelessWidget {
  const ProfilePage({required this.title, Key? key}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: _appBarBackgroundColor,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Image.network(_imageUrl),
      ));
}
