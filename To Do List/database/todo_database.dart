// ignore_for_file: non_constant_identifier_names
import 'package:hive_flutter/hive_flutter.dart';

class TodoDatabase {

    List ToDoList = [];

    final _mybox = Hive.box("MyBox");

    void CreateIntialData(){
      ToDoList = [
        ["Make an app", false],
        ["Eat snacks", false],
        ];
    }

    void loadData(){
     ToDoList =  _mybox.get("TODOLIST");
    }

    void updateData(){
      _mybox.put("TODOLIST", ToDoList);
    }


}