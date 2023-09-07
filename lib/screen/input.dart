// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../bmi.dart';
import 'output.dart';

Color activeColor = Color(0xFF1D1E33);
Color inActiveColor = Color(0xFF111328);
Color currentColorM = inActiveColor;
Color currentColorF = inActiveColor;
double height = 180;
int heightInt = height.round();
int weight = 74;
int age = 19;
BMI person = BMI(height: height, weight: weight);

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(5),
                  child: TextButton(
                    // Change it to container and apply onTap function to recognise the gesture
                    style: TextButton.styleFrom(backgroundColor: currentColorM),
                    onPressed: () {
                      setState(() {
                        currentColorM = activeColor;
                        currentColorF = inActiveColor;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          IconData(0xe3c5, fontFamily: 'MaterialIcons'),
                          color: Colors.white,
                          size: 100,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Male",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ),
                )),
                Expanded(
                    child: Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(5),
                  child: TextButton(
                    style: TextButton.styleFrom(backgroundColor: currentColorF),
                    onPressed: () {
                      setState(() {
                        currentColorF = activeColor;
                        currentColorM = inActiveColor;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          IconData(0xe261, fontFamily: 'MaterialIcons'),
                          color: Colors.white,
                          size: 100,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Female",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ))
              ],
            ),
            Expanded(
                child: Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
              color: activeColor,
              child: Column(children: [
                Text(
                  "HEIGHT",
                  style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "$heightInt cm",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
                Slider(
                  value: height,
                  min: 0,
                  max: 220,
                  activeColor: Colors.red,
                  inactiveColor: Colors.white,
                  onChanged: (double value) {
                    setState(() {
                      height = value;
                      heightInt = height.round();
                      person.setHeight(height);
                    });
                  },
                ),
              ]),
            )),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(20),
                    color: inActiveColor,
                    child: Column(
                      children: [
                        Text(
                          "WEIGHT",
                          style: TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "$weight Kg",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white38),
                                child: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        weight--;
                                        person.setWeight(weight);
                                      });
                                    },
                                    child: Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                    ))),
                            Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white38),
                                child: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        weight++;
                                        person.setWeight(weight);
                                      });
                                    },
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    )))
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(20),
                    color: inActiveColor,
                    child: Column(
                      children: [
                        Text(
                          "AGE",
                          style: TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "$age yrs",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white38),
                                child: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        age--;
                                      });
                                    },
                                    child: Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                    ))),
                            Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white38),
                                child: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        age++;
                                      });
                                    },
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    )))
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {
                    double res = person.getBMI();
                    String out = res.toStringAsFixed(1);
                    
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => OutputPage(
                            result: out,
                          ),
                        ),
                      );
                    
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                  child: Text(
                    "Calculate BMI",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
