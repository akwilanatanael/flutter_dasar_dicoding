// ignore_for_file: prefer_const_constructors

import 'package:codelab_1/pages/ui/second_screen.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  final String message = 'Hello from first screen!';
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Pindah Screen'),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen(message)));
          },
        ),
      ),
    );
  }
}
