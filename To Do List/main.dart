import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/ToDo.dart';
import 'package:hive_flutter/hive_flutter.dart';


void main() async {

  await Hive.initFlutter();
  var box = await Hive.openBox("MyBox");

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Todo(),
    );
  }
}

