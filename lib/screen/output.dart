// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class OutputPage extends StatelessWidget {
  late String result;
  late String status;
  late Color colour;
  late String message;
  OutputPage({required this.result}) {
    double check = double.parse(result);
    if (check >= 18.5 && check <= 24.9) {
      status = "NORMAL";
      colour = Colors.green;
      message = "You have done a great job";
    } else if (check < 18.5) {
      status = "UNDERWEIGHT";
      colour = Colors.yellow;
      message = "You should gain more";
    } else if (check >= 25 && check <= 29.9) {
      status = "OVERWEIGHT";
      colour = Colors.red;
      message = "You should do more exercise";
    } else {
      status = "OBESE";
      colour = Colors.purple;
      message = "You should come under overweight first";
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF0A0E21),
        appBar: AppBar(
          title: Text(
            "BMI Calculator",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          centerTitle: true,
          backgroundColor: Color(0xFF0A0E21),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "YOUR RESULT",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        color: Colors.white),
                  ))
            ]),
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(30),
              color: Color(0xFF1D1E33),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "$status",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: colour),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    result,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 90,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    message,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.white60),
                        textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            Container(
              color: Colors.red,
              width: double.infinity,
              padding: EdgeInsets.all(10),
              child: TextButton(
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    "Re Calculate BMI",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
