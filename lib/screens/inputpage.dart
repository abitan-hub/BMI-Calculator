import 'package:Calculator/screens/result_page.dart';
import 'package:flutter/material.dart';
import 'package:Calculator/components/resuableContainer1.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:Calculator/components/genderCard.dart';
import 'package:Calculator/constants.dart';
import 'package:Calculator/components/bottomButton.dart';
import 'package:Calculator/components/roundIconButton.dart';
import 'package:Calculator/functionalPart/calculator.dart';

enum GenderType {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  GenderType selectedGender;
  int height = 180;
  int weight = 60;
  int age = 30;
  // Color maleCardColor = inActiveContainerColor;
  // Color femaleCardColor = inActiveContainerColor;
  // void updateColor(GenderType selectedGender) {

  //   if (selectedGender == GenderType.male) {
  //     if (maleCardColor == inActiveContainerColor) {
  //       maleCardColor = activeContainerColor;
  //       femaleCardColor = inActiveContainerColor;
  //     } else {
  //       maleCardColor = inActiveContainerColor;
  //     }
  //   } else if (selectedGender == GenderType.female) {
  //     if (femaleCardColor == inActiveContainerColor) {
  //       femaleCardColor = activeContainerColor;
  //       maleCardColor = inActiveContainerColor;
  //     } else {
  //       femaleCardColor = inActiveContainerColor;
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableContainer1(
                  onPress: () {
                    setState(() {
                      selectedGender = GenderType.male;
                    });
                  },
                  colour: selectedGender == GenderType.male
                      ? kActiveContainerColor
                      : kInActiveContainerColor,
                  cardChild: GenderCard(
                    text: 'Male',
                    icon: FontAwesomeIcons.mars,
                  ),
                ),
              ),
              Expanded(
                  child: ReusableContainer1(
                onPress: () {
                  setState(() {
                    selectedGender = GenderType.female;
                  });
                },
                colour: selectedGender == GenderType.female
                    ? kActiveContainerColor
                    : kInActiveContainerColor,
                cardChild: GenderCard(
                  text: 'FEMALE',
                  icon: FontAwesomeIcons.venus,
                ),
              )),
            ],
          )),
          Expanded(
              child: ReusableContainer1(
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'HEIGHT',
                  style: kLabelTextStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: <Widget>[
                    Text(
                      height.toString(),
                      style: kNumberTextStyle,
                    ),
                    Text(
                      'cm',
                      style: kLabelTextStyle,
                    )
                  ],
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    inactiveTrackColor: kSliderInActiveColor,
                    activeTrackColor: kSliderActiveColor,
                    thumbColor: kBottomContainerColor,
                    overlayColor: kOverLayColor,
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                  ),
                  child: Slider(
                    value: height.toDouble(),
                    min: 120,
                    max: 220,
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue.round();
                      });
                    },
                  ),
                )
              ],
            ),
            colour: kActiveContainerColor,
          )),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                  child: ReusableContainer1(
                colour: kActiveContainerColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'WEIGHT',
                      style: kLabelTextStyle,
                    ),
                    Text(
                      weight.toString(),
                      style: kNumberTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RoundIconButton(
                          icon: FontAwesomeIcons.minus,
                          onPress: () {
                            setState(() {
                              weight--;
                            });
                          },
                        ),
                        SizedBox(
                          width: kSizeBoxWidth,
                        ),
                        RoundIconButton(
                          icon: FontAwesomeIcons.plus,
                          onPress: () {
                            setState(() {
                              weight++;
                            });
                          },
                        )
                      ],
                    )
                  ],
                ),
              )),
              Expanded(
                  child: ReusableContainer1(
                colour: kActiveContainerColor,
                cardChild: Column(
                  children: <Widget>[
                    Text(
                      'AGE',
                      style: kLabelTextStyle,
                    ),
                    Text(
                      age.toString(),
                      style: kNumberTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPress: () {
                              setState(() {
                                age--;
                              });
                            }),
                        SizedBox(
                          width: kSizeBoxWidth,
                        ),
                        RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onPress: () {
                              setState(() {
                                age++;
                              });
                            })
                      ],
                    )
                  ],
                ),
              )),
            ],
          )),
          BottomButton(
            onpress: () {
              CalculatorBrain calc =
                  CalculatorBrain(height: height, weight: weight);

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultPage(
                    bmiResult: calc.calculateBMI(),
                    resultAdvice: calc.getAdvice(),
                    resultText: calc.getresult(),
                  ),
                ),
              );
            },
            text: 'CALCULATE',
          ),
        ],
      ),
    );
  }
}
