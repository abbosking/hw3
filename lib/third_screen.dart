import 'package:flutter/material.dart';
import 'fourth_screen.dart';

class ThirdScreen extends StatefulWidget {
  final int processedNumber;

  ThirdScreen(this.processedNumber);

  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  int additionalNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Third Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Processed Number: ${widget.processedNumber}'),
            Text('Additional Number: $additionalNumber'),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  additionalNumber = widget.processedNumber * 2;
                });

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FourthScreen(additionalNumber)),
                );
              },
              child: Text('Double It'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  additionalNumber = widget.processedNumber + 1;
                });

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FourthScreen(additionalNumber)),
                );
              },
              child: Text('Add 1'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, additionalNumber);
              },
              child: Text('Previous Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
