import 'package:flutter/material.dart';
import 'package:bmi/constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.onTap, required this.buttonTitle});

  final VoidCallback onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: LargeButtonTextStyle,
          ),
        ),
        padding: EdgeInsets.only(bottom: 20),
        color: bottomContainerColour,
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: 60.0,
      ),
    );
  }
}
