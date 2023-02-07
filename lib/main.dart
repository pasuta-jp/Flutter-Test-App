import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:developer';
import './view/AddMemo.dart';
import './view/List.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: L10n.localizationsDelegates,
      supportedLocales: L10n.supportedLocales,
      title: 'My Todo App',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        //scaffoldBackgroundColor: Colors.purple[600],
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.orange,
        ),
      ),
      darkTheme: ThemeData.dark().copyWith(
        primaryColor: Colors.purple,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.orange,
        ),
      ),
      home: TodoListPage(),
    );
  }
}
