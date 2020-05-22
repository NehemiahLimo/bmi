import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_content.dart';

const bottomContainerHeight = 80.0;
const reusableColor = Color(0xFF1D1E33);
const inactiveColor = Color(0xFF111328);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleColor = inactiveColor;
  Color femaleColor  = inactiveColor;

  void changeColor(int gender){
    //1=Male, 2=Female
    if(gender==1){
      if(maleColor==inactiveColor){
        maleColor = reusableColor;
        femaleColor = inactiveColor;
      }else{
        maleColor=inactiveColor;
      }
    }else if(gender ==2){
      if(femaleColor==inactiveColor){
        femaleColor = reusableColor;
        maleColor = inactiveColor;
      }else{
        femaleColor=inactiveColor;
      }
    }
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        title: Text('BMI Calculator'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        changeColor(1);
                      });
                    },
                    child: ReusableCard(colour: maleColor,
                        cardChild: MaleFemaleCard(icon: FontAwesomeIcons.mars, label: 'Male',),

                    ),
                  ),),
                Expanded(child: GestureDetector(
                  onTap: (){
                    setState(() {
                      changeColor(2);
                    });
                  },
                  child: ReusableCard(colour: femaleColor,
                    cardChild: MaleFemaleCard(icon: FontAwesomeIcons.venus, label: 'Female',),

                  ),
                ),),
              ],
            ),
          ),
          Expanded(child: ReusableCard(colour: reusableColor,),),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(child: ReusableCard(colour:reusableColor ,),),
                Expanded(child: ReusableCard(colour: reusableColor,),),
              ],
            ),
          ),
          Container(
            color: Color(0xFFEB1555),
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],


      ),


    );
  }
}






