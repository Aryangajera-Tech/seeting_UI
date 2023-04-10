import 'package:flutter/material.dart';
import 'package:seeting/screens/gallery_screen.dart';

import 'exam_2.dart';
import 'exam_3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        routes: {"/r": (context) => exam_2(), "/p": (context) => exam_3()},
        home: GalleryScreen());
  }
}
