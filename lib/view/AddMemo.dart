import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:developer';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class TodoAddPage extends StatefulWidget {
  @override
  _TodoAddPageState createState() => _TodoAddPageState();
}

class _TodoAddPageState extends State<TodoAddPage> {
  String _title = '';
  String _text = '';
  List<String> list = ['', ''];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('リスト追加'),
      ),
      body: Container(
        padding: EdgeInsets.all(64),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(_title, style: TextStyle(color: Colors.blue)),
            const SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                  hintText: "text",
                  labelText: L10n.of(context)!.title,
                  icon: Icon(Icons.drive_file_rename_outline)),
              onChanged: (String value) {
                setState(() {
                  _title = value;
                  list[0] = _title;
                });
              },
            ),
            Text(_text, style: TextStyle(color: Colors.blue)),
            TextField(
              decoration: InputDecoration(
                  hintText: "text",
                  labelText: "Memo",
                  icon: Icon(Icons.drive_file_rename_outline)),
              onChanged: (String value) {
                setState(() {
                  _text = value;
                  list[1] = _text;
                });
              },
            ),
            const SizedBox(height: 8),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop(list);
                },
                child: Text('Add List', style: TextStyle(color: Colors.white)),
              ),
            ),
            const SizedBox(height: 8),
            Container(
              width: double.infinity,
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Cancel'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
