import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:developer';
import './view/AddMemo.dart';

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
      home: TodoListPage(),
    );
  }
}

class TodoListPage extends StatefulWidget {
  @override
  _TodoListPageState createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  List<List<String>> todoList = [];
  @override
  Widget build(BuildContext context) {
    //log(todoList.toString());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Column(
          children: [
            Text(
              'PASUTA MEMO',
              style: TextStyle(fontSize: 25),
            ),
            Text(
              'メモ一覧',
              style: TextStyle(fontSize: 15),
            ),
          ],
        ),
        leading: const Icon(Icons.menu),
        actions: const [
          Icon(Icons.add),
          Icon(Icons.done),
        ],
      ),
      body: ListView.builder(
        itemCount: todoList.length,
        itemBuilder: (context, index) {
          //log(index.toString());
          return Card(
            child: ListTile(
              leading: Icon(Icons.chat),
              title: Text(todoList[index][0]),
              subtitle: Text(todoList[index][1]),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final newListText = await Navigator.of(context).push(
            MaterialPageRoute(builder: (context) {
              return TodoAddPage();
            }),
          );
          if (newListText != null) {
            setState(() {
              todoList.add(newListText);
            });
          }
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.purple,
      ),
    );
  }
}
