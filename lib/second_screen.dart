import 'package:flutter/material.dart';
import 'third_screen.dart';

class SecondScreen extends StatefulWidget {
  final int chosenNumber;

  SecondScreen(this.chosenNumber);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  int processedNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Chosen Number: ${widget.chosenNumber}'),
            Text('Processed Number: $processedNumber'),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  processedNumber = widget.chosenNumber * 2;
                });

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ThirdScreen(processedNumber)),
                );
              },
              child: Text('Double It'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  processedNumber = widget.chosenNumber + 1;
                });

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ThirdScreen(processedNumber)),
                );
              },
              child: Text('Add 1'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, processedNumber);
              },
              child: Text('Previous Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
