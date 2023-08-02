import 'package:bmi/components/bottom_button.dart';
import 'package:bmi/components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi/constants.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {required this.interpretation,
      required this.bmiResult,
      required this.resultText});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Text(
              'Your Result',
              style: TitleTextStyle,
            )),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: activeCardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      resultText.toUpperCase(),
                      style: ResultTextStyle,
                    ),
                    Text(
                      bmiResult,
                      style: BMItextstyle,
                    ),
                    Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: bodyTextStyle,
                    )
                  ],
                ),
              ),
            ),
            BottomButton(
                onTap: () {
                  Navigator.pop(context);
                },
                buttonTitle: 'RE-CALCULATE')
          ],
        ));
  }
}
