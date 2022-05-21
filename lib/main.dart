import 'package:flutter/material.dart';
//import 'common/screens/main_page_screen.dart';
import 'profile_page/screens/profile_page.dart';

const String _title = 'Best Music App EVER';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: _title,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const ProfilePage(title: _title),
      );
}
