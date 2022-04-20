import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String number;
  final Color color;

  const CalculatorButton({
    Key? key,
    required this.number,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 80,
        width: 80,
        child: Center(
            child: Text(
          number,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        )),
        decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey,
            ),
            color: color,
            boxShadow:[BoxShadow(color: Colors.grey,offset: Offset(1,1),blurRadius: 1)],
            shape: BoxShape.circle),
      ),
    );
  }
}
