import 'package:flutter/material.dart';
import '../constants.dart';
import 'package:bmi_calculator/widgets/roud_icon_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ReusableAddCard extends StatelessWidget {
  ReusableAddCard({this.title, this.number, this.add, this.subtract});

  final String title;
  final int number;
  final Function add;
  final Function subtract;
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(
        title,
        style: kLabelTextStyle,
      ),
      Text(
        number.toString(),
        style: kHeaderTextStyle,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RoundIconButton(
            icon: FontAwesomeIcons.minus,
            onPressed: subtract,
          ),
          SizedBox(width: 10),
          RoundIconButton(
            icon: FontAwesomeIcons.plus,
            onPressed: add,
          ),
        ],
      ),
    ]);
  }
}