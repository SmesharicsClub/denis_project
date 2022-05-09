import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: _Constants.title,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(title: _Constants.title),
      );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({required this.title, Key? key}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final containers = [
    Container(height: 50, color: Colors.red),
    Container(
      height: 30,
      child: const Text('Some text'),
    ),
    Container(
      height: 200,
      decoration: BoxDecoration(
          color: _Constants.thirdContainerBoxDecorationColor,
          borderRadius: BorderRadiusDirectional.circular(200)),
      child: const Center(
          child: Text(
        _Constants.thirdContainerText,
        style: _Constants.thirdContainerTextStyle,
        textAlign: TextAlign.center,
      )),
    )
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: _Constants.appBarBackgroundColor,
      ),
      body: ListView.separated(
          itemCount: 3,
          itemBuilder: (context, index) => containers[index],
          separatorBuilder: (context, index) => const SizedBox(height: 16)));
}

class _Constants {
  static const String title = 'Best Music App EVER';
  static const Color appBarBackgroundColor = Color(0xFF121212);
  static const Color thirdContainerBoxDecorationColor = Color(0x4FFD0000);
  static const String thirdContainerText =
      'Фильтр Чебышева\n3-ого порядка\nпередаёт\nпривет';
  static const TextStyle thirdContainerTextStyle = TextStyle(
      color: Color(0xFFF70153),
      fontSize: 35,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.italic,
      fontFamily: 'Arial');
}
