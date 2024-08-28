import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hit_project/board/board_main_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'To DO List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: BoardMainPage(),
    );
  }
}
