import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp()); // Removed `const` here
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  int x = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Lottery App"),
          backgroundColor: Colors.greenAccent,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "Lottery winning number is 5",
                style: const TextStyle(fontSize: 24),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 250,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(.3),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: x == 5
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.done_all_outlined,
                            color: Colors.green,
                            size: 35,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Congratulation you have won the lottery you number is $x',
                            textAlign: TextAlign.center,
                          )
                        ],
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.error_outline,
                            color: Colors.red,
                            size: 35,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Better luck next time you number is $x try again',
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              x = random.nextInt(10);
            });
          },
          child: const Icon(Icons.refresh),
        ),
      ),
    );
  }
}
