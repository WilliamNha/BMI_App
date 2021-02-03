import 'package:flutter/material.dart';
import '../constant.dart';
import '../conponents/reusable_card.dart';
import '../conponents/bottom_button.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {@required this.bmiResult,
      @required this.resultText,
      @required this.interpretation});
  final String bmiResult;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kactiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText,
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    interpretation,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
//          GestureDetector(
//            onTap: () {
//              Navigator.push(context,
//                  MaterialPageRoute(builder: (context) => ResultPage()));
//            },
//            child: Container(
//              padding: EdgeInsets.only(bottom: 10),
//              child: Center(
//                child: Text(
//                  'RE-CALCULATE',
//                  style: klargeButtonTextStyle,
//                ),
//              ),
//              color: kbottomContainerColor,
//              margin: EdgeInsets.only(top: 10.0),
//              width: double.infinity,
//              height: kbottomContainerHeight,
//            ),
//          ),
          BottomButton(
              buttonTitle: 'RE-CALCULATE',
              onTap: () {
                Navigator.pop(context);
              }),
        ],
      ),
    );
  }
}
