// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class FourthScreenPage extends StatefulWidget {
  const FourthScreenPage({super.key});

  @override
  State<FourthScreenPage> createState() => _FourthScreenPageState();
}

class _FourthScreenPageState extends State<FourthScreenPage> {
  String? language;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen ke 4'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              child: Text('Tombol'),
              onPressed: () {},
            ),
            TextButton(
              onPressed: (() {}),
              child: Text(
                'Text Button',
              ),
            ),
            OutlinedButton(
              child: const Text('Outlined Button'),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.volume_up),
              tooltip: 'Increase volume by 10',
              onPressed: () {},
            ),
            DropdownButton(
                items: <DropdownMenuItem<String>>[
                  DropdownMenuItem(
                    value: 'Dart',
                    child: Text('Dart'),
                  ),
                  DropdownMenuItem(
                    value: 'Kotlin',
                    child: Text('Kotlin'),
                  ),
                  DropdownMenuItem(
                    value: 'Swift',
                    child: Text('Swift'),
                  ),
                ],
                value: language,
                hint: Text(
                  'Select Language',
                ),
                onChanged: (String? value) {
                  setState(() {
                    language = value;
                  });
                }),
          ],
        ),
      ),
    );
  }
}
