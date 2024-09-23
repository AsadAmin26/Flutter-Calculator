import 'package:calc/components/calcbutton.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class HomeUi extends StatefulWidget {
  const HomeUi({super.key});

  @override
  State<HomeUi> createState() => _HomeUiState();
}

class _HomeUiState extends State<HomeUi> {
  var userinput = '';
  var answer = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //App Bar
      appBar: AppBar(
        title: const Center(
            child: Text(
          'Calculator',
          style: TextStyle(letterSpacing: 2.0),
        )),
      ),
      //UI
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          userinput.toString(),
                          style: const TextStyle(
                              color: Colors.white, fontSize: 24),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          answer.toString(),
                          style: const TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Button(
                          title: 'AC',
                          buttonColor: Colors.grey,
                          onPressFun: () {
                            userinput = '';
                            answer = '';
                            setState(() {});
                          },
                        ),
                        Button(
                          title: '+/-',
                          buttonColor: Colors.grey,
                          onPressFun: () {
                            userinput += '-';
                            setState(() {});
                          },
                        ),
                        Button(
                          title: '%',
                          buttonColor: Colors.grey,
                          onPressFun: () {
                            setState(() {});
                          },
                        ),
                        Button(
                          title: '/',
                          buttonColor: Colors.orange,
                          onPressFun: () {
                            userinput += '/';
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Button(
                          title: '7',
                          buttonColor: Colors.grey,
                          onPressFun: () {
                            userinput += '7';
                            setState(() {});
                          },
                        ),
                        Button(
                          title: '8',
                          buttonColor: Colors.grey,
                          onPressFun: () {
                            userinput += '8';
                            setState(() {});
                          },
                        ),
                        Button(
                          title: '9',
                          buttonColor: Colors.grey,
                          onPressFun: () {
                            userinput += '9';
                            setState(() {});
                          },
                        ),
                        Button(
                          title: '*',
                          buttonColor: Colors.orange,
                          onPressFun: () {
                            userinput += '*';
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Button(
                          title: '4',
                          buttonColor: Colors.grey,
                          onPressFun: () {
                            userinput += '4';
                            setState(() {});
                          },
                        ),
                        Button(
                          title: '5',
                          buttonColor: Colors.grey,
                          onPressFun: () {
                            userinput += '5';
                            setState(() {});
                          },
                        ),
                        Button(
                          title: '6',
                          buttonColor: Colors.grey,
                          onPressFun: () {
                            userinput += '6';
                            setState(() {});
                          },
                        ),
                        Button(
                          title: '-',
                          buttonColor: Colors.orange,
                          onPressFun: () {
                            userinput += '-';
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Button(
                          title: '1',
                          buttonColor: Colors.grey,
                          onPressFun: () {
                            userinput += '1';
                            setState(() {});
                          },
                        ),
                        Button(
                          title: '2',
                          buttonColor: Colors.grey,
                          onPressFun: () {
                            userinput += '2';
                            setState(() {});
                          },
                        ),
                        Button(
                          title: '3',
                          buttonColor: Colors.grey,
                          onPressFun: () {
                            userinput += '3';
                            setState(() {});
                          },
                        ),
                        Button(
                          title: '+',
                          buttonColor: Colors.orange,
                          onPressFun: () {
                            userinput += '+';
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Button(
                          title: '0',
                          buttonColor: Colors.grey,
                          onPressFun: () {
                            userinput += '0';
                            setState(() {});
                          },
                        ),
                        Button(
                          title: '.',
                          buttonColor: Colors.grey,
                          onPressFun: () {
                            userinput += '.';
                            setState(() {});
                          },
                        ),
                        Button(
                          title: 'DEL',
                          buttonColor: Colors.grey,
                          onPressFun: () {
                            userinput =
                                userinput.substring(0, userinput.length - 1);
                            setState(() {});
                          },
                        ),
                        Button(
                          title: '=',
                          buttonColor: Colors.orange,
                          onPressFun: () {
                            equalButton();
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void equalButton() {
    Parser p = Parser();
    Expression exp = p.parse(userinput);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    answer = eval.toString();
  }
}
