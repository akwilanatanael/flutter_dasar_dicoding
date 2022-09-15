// ignore_for_file: prefer_const_constructors, prefer_final_fields

import 'package:flutter/material.dart';

class FiveScreenPage extends StatefulWidget {
  const FiveScreenPage({super.key});

  @override
  State<FiveScreenPage> createState() => _FiveScreenPageState();
}

class _FiveScreenPageState extends State<FiveScreenPage> {
  TextEditingController _controller = TextEditingController();
  bool lightOn = false;
  String? language;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen ke 5'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: 'Write Your Name Here...',
                labelText: 'Your Name',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: Text(
                'Submit',
              ),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: Text(
                        'Hello, ${_controller.text}',
                      ),
                    );
                  },
                );
              },
            ),
            Switch(
              value: lightOn,
              onChanged: (bool value) {
                setState(
                  () {
                    lightOn = value;
                  },
                );
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(lightOn ? 'Light On' : 'Light Off'),
                    duration: Duration(milliseconds: 250),
                  ),
                );
              },
            ),
            Column(
              children: [
                ListTile(
                  leading: Radio<String>(
                    value: 'Dart',
                    groupValue: language,
                    onChanged: (String? value) {
                      setState(() {
                        language = value;
                        showSnackBar();
                      });
                    },
                  ),
                  title: Text('Dart'),
                ),
                ListTile(
                  leading: Radio<String>(
                    value: 'Kotlin',
                    groupValue: language,
                    onChanged: (String? value) {
                      setState(() {
                        language = value;
                        showSnackBar();
                      });
                    },
                  ),
                  title: Text('Kotlin'),
                ),
                ListTile(
                  leading: Radio<String>(
                    value: 'Swidt',
                    groupValue: language,
                    onChanged: (String? value) {
                      setState(() {
                        language = value;
                        showSnackBar();
                      });
                    },
                  ),
                  title: Text('Swift'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void showSnackBar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$language selected'),
        duration: Duration(
          seconds: 1,
        ),
      ),
    );
  }

  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
