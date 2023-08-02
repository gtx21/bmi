import 'package:bmi/screens/input_page.dart';

import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  final primaryColor = Color(0xFF0A0E21);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: primaryColor,
        appBarTheme: AppBarTheme(backgroundColor: Color(0xFF0A0E21)),
        colorScheme: ColorScheme.fromSwatch(accentColor: Colors.purple),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: InputPage(),
    );
  }
}
