import 'package:design_exercise/features/home/view/home_view.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      title: 'Material App',
      home: HomeView()
    );
  }
}