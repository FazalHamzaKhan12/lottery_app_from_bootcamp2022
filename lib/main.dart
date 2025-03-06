import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
   int x = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Lottery App"),
          backgroundColor: Colors.greenAccent,
        ),
        body: SafeArea(
          child: Center(
            child: Text(
              x.toString(),
              style: TextStyle(fontSize: 80),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            x++ ;
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
