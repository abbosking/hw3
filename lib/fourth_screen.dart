import 'package:flutter/material.dart';
import 'fifth_screen.dart';

class FourthScreen extends StatefulWidget {
  final int additionalNumber;

  FourthScreen(this.additionalNumber);

  @override
  _FourthScreenState createState() => _FourthScreenState();
}

class _FourthScreenState extends State<FourthScreen> {
  int finalNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fourth Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Additional Number: ${widget.additionalNumber}'),
            Text('Final Number: $finalNumber'),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  finalNumber = widget.additionalNumber * 2;
                });

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FifthScreen(finalNumber)),
                );
              },
              child: Text('Double It'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  finalNumber = widget.additionalNumber + 1;
                });

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FifthScreen(finalNumber)),
                );
              },
              child: Text('Add 1'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, finalNumber);
              },
              child: Text('Previous Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
