import 'package:flutter/material.dart';

class FifthScreen extends StatelessWidget {
  final int finalNumber;

  FifthScreen(this.finalNumber);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fifth Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Final Number: $finalNumber'),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, finalNumber);
              },
              child: Text('Back to Previous Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
