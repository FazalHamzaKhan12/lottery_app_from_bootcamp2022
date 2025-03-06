import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());  // Removed `const` here
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int x = 0;

  // Function to increment x
  void incrementX() {
    setState(() {
      x++;  // Increment the value of x by 1
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Lottery App"),
          backgroundColor: Colors.greenAccent,
        ),
        body: SafeArea(
          child: Center(
            child: Text(
              x.toString(),
              style: const TextStyle(fontSize: 80),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: incrementX,  // Call the incrementX function
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
