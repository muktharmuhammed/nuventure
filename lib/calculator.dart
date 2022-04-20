import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nuventure/widgets/calculator_button.dart';

class Calculate extends StatefulWidget {
  const Calculate({Key? key}) : super(key: key);

  @override
  State<Calculate> createState() => _CalculateState();
}

class _CalculateState extends State<Calculate> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [SizedBox(height: 10,),
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            child: Text(''),
            decoration: BoxDecoration(shape: BoxShape.rectangle,border: Border.all(color: Colors.black54)),
          ),SizedBox(height: 5,),
          Row(
            children: [
              Column(

                children: [
                  Row(

                    children: [
                      CalculatorButton(number: '7',color: Colors.white70),
                      CalculatorButton(number: '8',color: Colors.white70),
                      CalculatorButton(number: '9',color: Colors.white70),
                      CalculatorButton(number: 'x',color: Colors.grey),
                    ],
                  ),
                  Row(
                    children: [
                      CalculatorButton(number: '4',color: Colors.white70),
                      CalculatorButton(number: '5',color: Colors.white70),
                      CalculatorButton(number: '6',color: Colors.white70),
                      CalculatorButton(number: '/',color: Colors.grey)
                    ],
                  ),
                  Row(
                    children: [
                      CalculatorButton(number: '1',color: Colors.white70),
                      CalculatorButton(number: '2',color: Colors.white70),
                      CalculatorButton(number: '3',color: Colors.white70),
                      CalculatorButton(number: '+',color: Colors.grey)
                    ],
                  ),
                  Row(
                    children: [
                      CalculatorButton(number: '=',color: Colors.orangeAccent),
                      CalculatorButton(number: '0',color: Colors.white70),
                      CalculatorButton(number: 'C',color: Colors.grey),
                      CalculatorButton(number: '-',color: Colors.grey)
                    ],
                  )
                ],
              ),
            ],
          ),
        ],
      )),
    );
  }
}
