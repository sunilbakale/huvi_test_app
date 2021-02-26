import 'package:flutter/material.dart';
import 'package:huvi_test_app/tab_page.dart';
import 'screens/category_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Huvi',
      theme: ThemeData(
        fontFamily: 'Roboto Mono',
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        "categories": (context) => CategoryScreen(),
      },
      home: MyHomePage(title: 'huvi'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(Object context) {
    return TabPage();
  }
}