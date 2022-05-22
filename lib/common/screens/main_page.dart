import 'package:flutter/material.dart';

const Color _appBarBackgroundColor = Color(0xFF121212);
const Color _thirdContainerBoxDecorationColor = Color(0x4FFD0000);
const String _thirdContainerText =
    'Фильтр Чебышева\n3-ого порядка\nпередаёт\nпривет';
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
    Container(height: 50, color: Colors.red),
    Container(
      height: 30,
      child: const Text('Some text'),
    ),
    Container(
      height: 200,
      decoration: BoxDecoration(
          color: _thirdContainerBoxDecorationColor,
          borderRadius: BorderRadiusDirectional.circular(200)),
      child: const Center(
          child: Text(
        _thirdContainerText,
        style: _thirdContainerTextStyle,
        textAlign: TextAlign.center,
      )),
    )
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: _appBarBackgroundColor,
        actions: [
          IconButton(
              onPressed: () => Navigator.pushNamed(context, '/profile'),
              icon: Image.asset('assets/button.png'))
        ],
      ),
      body: ListView.separated(
          itemCount: 3,
          itemBuilder: (context, index) => containers[index],
          separatorBuilder: (context, index) => const SizedBox(height: 16)));
}
