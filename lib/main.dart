import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Best Music App EVER',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Best Music App EVER'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          backgroundColor: const Color(0xFF121212),
        ),
        body: ListView(
          children: [
            Container(
              height: 50,
              color: Colors.red,
            ),
            Container(
              height: 30,
              child: const Text("Some text"),
            ),
            Container(
              height: 200,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: const Color(0x4FFD0000),
                  borderRadius: BorderRadiusDirectional.circular(200)),
              child: const Center(
                  child: Text(
                "Фильтр Чебышева\n3-ого порядка\nпередаёт\nпривет",
                style: TextStyle(
                    color: Color(0xFFF70153),
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontFamily: "Arial"),
                textAlign: TextAlign.center,
              )),
            )
          ],
        ));
  }
}
