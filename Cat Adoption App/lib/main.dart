import 'package:cat_adoption_app/pages/homepage.dart';
import 'package:cat_adoption_app/pages/introPage.dart';
import 'package:cat_adoption_app/providers/cats_provider.dart';
import 'package:cat_adoption_app/providers/navbar_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => NavbarProvider(),
        ),

        ChangeNotifierProvider(
          create: (context) => CatsProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/intropage',
      routes: {
        '/intropage': (context) => const IntroPage(),
        '/homepage': (context) => Homepage(),
      },
    );
  }
}
