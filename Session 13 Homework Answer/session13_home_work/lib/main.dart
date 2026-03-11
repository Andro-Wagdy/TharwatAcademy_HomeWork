import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              color: Color(0xffe4f2fd),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Container(height: 20, width: 20, color: Color(0xffe0e0e0)),
                SizedBox(width: 10, height: 20),
                Expanded(
                  child: Container(height: 20, color: Color(0xffe0e0e0)),
                ),
              ],
            ),
            SizedBox(height: 10),
            Divider(),
            SizedBox(height: 10),
            Row(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(height: 40, width: 170, color: Color(0xffa5d6a7)),
                    Container(height: 10, width: 170, color: Color(0xffe6f6e9)),
                    Container(height: 40, width: 170, color: Color(0xffa5d6a7)),
                  ],
                ),
                SizedBox(width: 15),
                Container(height: 90, width: 90, color: Color(0xffffcc80)),
                Container(height: 90, width: 10, color: Color(0xfffff2df)),
                Container(height: 90, width: 95, color: Color(0xffffcc80)),
              ],
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Container(height: 80, width: 85, color: Color(0xffe1bee8)),
                SizedBox(width: 10),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(height: 35, width: 85, color: Color(0xffcf93d9)),
                    Container(height: 10, width: 85, color: Color(0xffe1bee8)),
                    Container(height: 35, width: 85, color: Color(0xffcf93d9)),
                  ],
                ),
                SizedBox(width: 10),
                Container(height: 80, width: 95, color: Color(0xffe1bee8)),
                Container(height: 80, width: 95, color: Color(0xfff3e5f6)),
              ],
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Container(height: 60, width: 180, color: Color(0xffb2dfdc)),
                SizedBox(width: 15),
                Container(height: 60, width: 185, color: Color(0xff80cbc4)),
              ],
            ),
            SizedBox(height: 15),
            Container(
              height: 45,
              width: double.infinity,
              color: Color(0xffe0e0e0),
            ),
          ],
        ),
      ),
    );
  }
}
