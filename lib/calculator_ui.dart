import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  Widget buildButton(String buttonText, double buttonHeight, Color buttonColor){
    return Container(
      height: MediaQuery.of(context).size.height * 0.1* buttonHeight,
      color: buttonColor,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
          ),
        ),
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0.0),
            side: BorderSide(
              color: Colors.white,
              width: 1,
              style: BorderStyle.solid,
            ),
          ),
          primary: buttonColor,
          padding: EdgeInsets.all(16),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.only(right: 15, top: 20),
            child: Text(
              '0',
              style: TextStyle(
                fontSize: 48,
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.only(right: 15, top: 20),
            child: Text(
              '0',
              style: TextStyle(
                fontSize: 48,
              ),
            ),
          ),
          Expanded(child: Divider()),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.75,
                child: Table(
                  children: [
                    TableRow(
                      children: [
                        buildButton('C', 1, Colors.redAccent),
                        buildButton('<-', 1, Colors.redAccent),
                        buildButton('/', 1, Colors.redAccent),
                      ],
                    ),
                    TableRow(
                      children: [
                        buildButton('7', 1, Colors.black54),
                        buildButton('8', 1, Colors.black54),
                        buildButton('9', 1, Colors.black54),
                      ],
                    ),
                    TableRow(
                      children: [
                        buildButton('4', 1, Colors.black54),
                        buildButton('5', 1, Colors.black54),
                        buildButton('6', 1, Colors.black54),
                      ],
                    ),
                    TableRow(
                      children: [
                        buildButton('1', 1, Colors.black54),
                        buildButton('2', 1, Colors.black54),
                        buildButton('3', 1, Colors.black54),
                      ],
                    ),
                    TableRow(
                      children: [
                        buildButton('.', 1, Colors.black54),
                        buildButton('0', 1, Colors.black54),
                        buildButton('00', 1, Colors.black54),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width*0.25,
                child: Table(
                  children: [
                    TableRow(
                      children: [
                        buildButton('x', 1, Colors.black54),
                      ],
                    ),
                    TableRow(
                      children: [
                        buildButton('-', 1, Colors.black54),
                      ],
                    ),
                    TableRow(
                      children: [
                        buildButton('+', 1, Colors.black54),
                      ],
                    ),
                    TableRow(
                      children: [
                        buildButton('=', 2, Colors.black54),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
