// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SixScreenPage extends StatelessWidget {
  const SixScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Six Screen',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 30,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Image.network(
              'https://picsum.photos/200/300',
              width: 200,
              height: 200,
            ),
            Image.asset(
              'images/android.png',
              width: 200,
              height: 200,
            ),
          ],
        ),
      ),
    );
  }
}
