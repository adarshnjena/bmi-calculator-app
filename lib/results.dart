import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your BMI is : -',
          style: TextStyle(
              fontFamily: 'Nunito',
              letterSpacing: 2,
              fontSize: 25,
              fontWeight: FontWeight.w900),
        ),
      ),
    );
  }
}
