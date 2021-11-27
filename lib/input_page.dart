import 'package:bmi_calculator/layout.dart';
import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'BMI CALCULATOR',
              style: TextStyle(
                fontFamily: 'Nunito',
                letterSpacing: 2,
                fontSize: 25,
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 3,
              child: Row(
                children: [
                  Expanded(
                      child: ReusableCard(
                    color: Color(0xFF1D1E33),
                  )),
                  Expanded(
                      child: ReusableCard(
                    color: Color(0xFF1D1E33),
                  )),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Row(
                children: [
                  Expanded(
                      child: ReusableCard(
                    color: Color(0xFF1D1E33),
                  )),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Row(
                children: [
                  Expanded(
                      child: ReusableCard(
                    color: Color(0xFF1D1E33),
                  )),
                  Expanded(
                      child: ReusableCard(
                    color: Color(0xFF1D1E33),
                  )),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Color(0xffEB1555),
                width: double.infinity,
                margin: EdgeInsets.only(top: 10),
                height: double.maxFinite,
              ),
            )
          ],
        ));
  }
}
