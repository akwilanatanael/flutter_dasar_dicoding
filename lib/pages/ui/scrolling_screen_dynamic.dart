// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ScrollingScreenDynamic extends StatelessWidget {
  final List<int> numberList = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  ScrollingScreenDynamic({super.key});

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: ListView(
  //       children: numberList.map((number) {
  //         return Container(
  //           height: 250,
  //           decoration: BoxDecoration(
  //             color: Colors.grey,
  //             border: Border.all(color: Colors.black),
  //           ),
  //           child: Center(
  //             child: Text(
  //               '$number', // Ditampilkan sesuai item
  //               style: const TextStyle(fontSize: 50),
  //             ),
  //           ),
  //         );
  //       }).toList(),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: numberList.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.grey,
              border: Border.all(color: Colors.black),
            ),
            child: Center(
              child: Text(
                '${numberList[index]}',
                style: const TextStyle(fontSize: 50),
              ),
            ),
          );
        },
      ),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: ListView.separated(
  //       itemCount: numberList.length,
  //       itemBuilder: (BuildContext context, int index) {
  //         return Container(
  //           height: 250,
  //           decoration: BoxDecoration(
  //             color: Colors.grey,
  //             border: Border.all(color: Colors.black),
  //           ),
  //           child: Center(
  //             child: Text(
  //               '${numberList[index]}',
  //               style: const TextStyle(fontSize: 50),
  //             ),
  //           ),
  //         );
  //       },
  //       separatorBuilder: (BuildContext context, int index) {
  //         return const Divider();
  //       },
  //     ),
  //   );
  // }
}
