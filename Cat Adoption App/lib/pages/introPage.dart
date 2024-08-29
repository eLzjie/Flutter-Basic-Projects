import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF6F6),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

               const SizedBox(height: 30),
              //logo
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Image.asset("images/Logo.png"),
              ),

              const SizedBox(height: 25),

              //title
              const Text("The more you care",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center),

              //title
              const Text("The more they purr",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center),

              const SizedBox(height: 20),

              const Text("Give a cat a second chance at a happy life.",
                  style: TextStyle(fontSize: 15),
                  textAlign: TextAlign.center),    

              const SizedBox(height: 150),


              GestureDetector(
                onTap: () => Navigator.pushNamed(context, '/homepage'),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color(0xFFFB6F92)),
                  child: const Center(
                    child: Text(
                      "Get Started",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              )
              //button
            ],
          ),
        ),
      ),
    );
  }
}
