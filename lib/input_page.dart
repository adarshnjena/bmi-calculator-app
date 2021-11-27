import 'package:bmi_calculator/layout.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';

Color activeCardColor = Color(0xFF1D1E33);
Color inactiveCardColor = Color(0xFF111328);
Color buttonColor = Color(0xffEB1555);

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;

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
                      child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: ReusableCard(
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.male,
                        text: 'Male',
                      ),
                      color: selectedGender == Gender.male
                          ? activeCardColor
                          : inactiveCardColor,
                    ),
                  )),
                  Expanded(
                      child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    child: ReusableCard(
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.female,
                        text: 'Female',
                      ),
                      color: selectedGender == Gender.female
                          ? activeCardColor
                          : inactiveCardColor,
                    ),
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
                    color: activeCardColor,
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
                    color: activeCardColor,
                  )),
                  Expanded(
                      child: ReusableCard(
                    color: activeCardColor,
                  )),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: buttonColor,
                ),
                width: double.infinity,
                height: double.maxFinite,
              ),
            )
          ],
        ));
  }
}
