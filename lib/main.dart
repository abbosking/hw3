import 'package:flutter/material.dart';
import 'dart:math';
import 'second_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  List<int> randomNumbers = [];

  @override
  void initState() {
    super.initState();
    generateRandomNumbers();
  }

  void generateRandomNumbers() {
    final random = Random();
    randomNumbers.clear();
    for (int i = 0; i < 6; i++) {
      randomNumbers.add(random.nextInt(100));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Choose a Number:'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: randomNumbers.map((number) {
                return ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondScreen(number)),
                    );
                  },
                  child: Text('$number'),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
