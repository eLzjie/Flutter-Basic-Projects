import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String statement = "";
  String result = "0";
  final List<String> buttons = [
    'C',
    '(',
    ')',
    '/',
    '7',
    '8',
    '9',
    '*',
    '4',
    '5',
    '6',
    '+',
    '1',
    '2',
    '3',
    '-',
    'AC',
    '0',
    '.',
    '=',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 244, 174, 197),
        body: Column(children: [
          const SizedBox(height: 10),
          Flexible(flex: 2, child: resultWidget()),
          Expanded(flex: 4, child: buttonWidget())
        ],),
      ),
    );
  }

  Widget resultWidget() {
    return Column(
      children: [
        //for result
        Container(
          padding: const EdgeInsets.all(10),
          alignment: Alignment.centerRight,
          child: Text(
            result,
            style: const TextStyle(fontSize: 32),
          ),
        ),

        //for statement

        Container(
          padding: const EdgeInsets.all(10),
          alignment: Alignment.centerRight,
          child: Text(
            statement,
            style: const TextStyle(
                  fontSize: 48, 
                  fontWeight: FontWeight.bold
                ),
          ),
        ),
      ],
    );
  }
  
  Widget buttonWidget() {
      return GridView.builder(
        itemCount: buttons.length,
        gridDelegate: 
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
          itemBuilder: (BuildContext context, int index){
              return _myButton(buttons[index]);
          },
        );
  }

  _myButton (String text){
    return Container(
      margin: const EdgeInsets.all(5),
      child: MaterialButton(
        onPressed: () {
          setState(() {
            buttonTap(text);
          });
        },

        color: getColor(text),
        shape: const CircleBorder(),
        child: Text(text, style: const TextStyle(fontSize: 30),)
      ),
    );
  }

  buttonTap(String text){
    return  handleButtonTap(text);
  }

    handleButtonTap(String text) {
    if (text == "AC") {
      statement = "";
      result = "0";
      return;
    }
    if (text == "=") {
      result = calculate();
      if (result.endsWith(".0")) {
        result = result.replaceAll(".0", "");
      }
      return;
    }

    if (text == "C") {
      statement = statement.substring(0, statement.length - 1);
      return;
    }
    statement = statement + text;
  }

  getColor(String text){
    if (text == "/" || text == "*" || text == "+" || text == "-") {
      return Color.fromARGB(255, 237, 125, 239);
    }
    if (text == "C" || text == "AC") {
      return Color.fromARGB(255, 223, 22, 227);
    }
    if (text == "(" || text == ")") {
      return Color.fromARGB(255, 141, 65, 143);
    }
    return Color.fromARGB(255, 205, 0, 154);
  
  }

  calculate() {
    try {
      var exp = Parser().parse(statement);
      var evaluation = exp.evaluate(EvaluationType.REAL, ContextModel());
      return evaluation.toString();
    } catch (e) {
      return "Err";
    }
  }


}
