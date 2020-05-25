import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusable_content.dart';
class Results extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Text('Your results',
              style: kTitleStyle,),
            ),
          ),
          Expanded(
            flex: 5,
              child: ReusableCard(
                colour: kReusableColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.cfry,
                  children: <Widget>[
                    Text(
                      'Normal', style: kResultTextStyle,
                    ),
                    Text('19.2', style: kBMITextStyle,),
                    Text('Your BMI is normal', style: kBodyStyle,textAlign: TextAlign.center,),
                  ],
                ),
              ),
          )
        ],
      ),
    );
  }
}
