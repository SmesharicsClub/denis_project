import 'package:flutter/material.dart';

const Color _appBarBackgroundColor = Color(0xFF121212);

class ProfilePage extends StatefulWidget {
  const ProfilePage({required this.title, Key? key}) : super(key: key);

  final String title;

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final String imageUrl = r'https://picsum.photos/250?image=9';
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: _appBarBackgroundColor,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Image.network(imageUrl),
      ));
}
