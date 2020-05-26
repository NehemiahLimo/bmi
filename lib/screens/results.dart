import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/reusable_content.dart';
import 'package:bmi/components/bottom_button.dart';
class Results extends StatelessWidget {

  Results({@required this.bmi_results,@required this.resultText,@required this.interpretation});

  final String bmi_results;
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
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
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
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                      resultText.toUpperCase(), style: kResultTextStyle, textAlign: TextAlign.center,
                    ),
                    Text(bmi_results, style: kBMITextStyle,textAlign: TextAlign.center,),
                    Text(interpretation, style: kBodyStyle,textAlign: TextAlign.center,),
                  ],
                ),
              ),
          ),
          BottomButton(buttonTitle: 'RE-Calculate',
          onTap: (){
            Navigator.pop(context);
          },),
        ],
      ),
    );
  }
}
