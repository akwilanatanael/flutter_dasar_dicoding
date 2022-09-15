// ignore_for_file: prefer_const_constructors

import 'package:codelab_1/pages/ui/expanded_flexible_page.dart';
import 'package:codelab_1/pages/ui/first_screen.dart';
import 'package:codelab_1/pages/ui/hello_world.dart';
import 'package:codelab_1/pages/ui/layout_builder_pages.dart';
import 'package:codelab_1/pages/ui/responsive_page.dart';
import 'package:codelab_1/pages/ui/second_screen.dart';
import 'package:codelab_1/pages/ui/second_screen_page.dart';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        primarySwatch: Colors.blue,
      ),
      home: SecondScreenPage(),
    );
  }
}
