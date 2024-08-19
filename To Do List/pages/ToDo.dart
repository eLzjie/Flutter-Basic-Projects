// ignore: file_names
// ignore_for_file: non_constant_identifier_names, unused_element

import 'package:flutter/material.dart';
import 'package:flutter_application_1/database/todo_database.dart';
import 'package:flutter_application_1/util/dialog_box.dart';
import 'package:flutter_application_1/util/todo_tile.dart';
import 'package:hive_flutter/hive_flutter.dart';

class Todo extends StatefulWidget {
  const Todo({super.key});

  @override
  State<Todo> createState() => _TodoState();
}

final _mybox = Hive.box("MyBox");
final _controller = TextEditingController();
TodoDatabase db = TodoDatabase();

class _TodoState extends State<Todo> {
  @override
  void initState() {
    if (_mybox.get("TODOLIST") == null) {
      db.CreateIntialData();
    } else {
      db.loadData();
    }
    super.initState();
  }

  void CheckboxStatus(bool? value, int index) {
    setState(() {
      db.ToDoList[index][1] = !db.ToDoList[index][1];
    });
  }

  void SaveTask() {
    setState(() {
      db.ToDoList.add([_controller.text, false]);
      Navigator.of(context).pop();
    });
  }

  void createTask() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox(
          controller: _controller,
          onSave: SaveTask,
          onCancel: Navigator.of(context).pop,
        );
      },
    );
  }

  void _DeleteTask(int index) {
    setState(() {
      db.ToDoList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 80, 169, 243),
        title: const Center(
          child: Text("Daily Planner"),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createTask,
        backgroundColor: const Color.fromARGB(255, 127, 193, 247),
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
          padding: const EdgeInsets.all(20),
          itemCount: db.ToDoList.length,
          itemBuilder: (context, index) {
            return TodoTile(
              task: db.ToDoList[index][0],
              isCompleted: db.ToDoList[index][1],
              onChanged: (value) => CheckboxStatus(value, index),
              DeleteTask: (context) => _DeleteTask(index),
            );
          }),
    );
  }
}
