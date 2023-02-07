import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:developer';
import './view/AddMemo.dart';
import './view/List.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Todo App',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        //scaffoldBackgroundColor: Colors.purple[600],
      ),
      darkTheme: ThemeData.dark().copyWith(
        primaryColor: Colors.purple,
      ),
      home: TodoListPage(),
    );
  }
}
