import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:math_expressions/math_expressions.dart';

class CustomGridView extends StatefulWidget {
  const CustomGridView({super.key});

  @override
  State<CustomGridView> createState() => _CustomGridViewState();
}

class _CustomGridViewState extends State<CustomGridView> {
  final List<String> buttons = [
    '7',
    '8',
    '9',
    '/',
    '4',
    '5',
    '6',
    'x',
    '1',
    '2',
    '3',
    '-',
    ',',
    '0',
    '=',
    '+',
  ];

  String expression = '';
  String result = '';

  onButtonPressed(String buttonText) {
    setState(() {
      if (buttonText == '=') {
        try {
          Parser p = Parser(); //tranforma em expressão matemática
          Expression exp = p.parse(expression
              .replaceAll('x', '*')
              .replaceAll(',', '.')); //analisa a expressão matemática
          ContextModel cm = ContextModel(); //contexto padrão
          result = '${exp.evaluate(EvaluationType.REAL, cm)}'; //resultado com ponto flutuante(REAL)
        } catch (e) {
          result = 'Error';
        }
      } else {
        expression +=
            buttonText; //add o que está sendo digitado na var expression
      }
    });
  }

  clearButtomC() {//limpa as variaveis
    setState(() {
      expression = '';
      result = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Row(
              children: <Widget>[
                Container(
                  width: MediaQuery.sizeOf(context).width * 0.95,
                  height: MediaQuery.sizeOf(context).height * 0.2,
                  decoration: BoxDecoration(
                    color: Colors.grey[800],
                    border: Border.all(width: 1, color: Colors.white),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      result,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 35,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                expression,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: buttons.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4),
          itemBuilder: (context, index) {
            return InkWell(
              //button
              onTap: () {
                onButtonPressed(buttons[index]);
              },
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(2),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 0.23,
                    height: MediaQuery.sizeOf(context).height * 0.23,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                        width: 1.5,
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        buttons[index],
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 35,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: InkWell(
            onTap: () {
              clearButtomC();
            },
            child: Center(
              child: Container(
                width: MediaQuery.sizeOf(context).width * 0.7,
                height: MediaQuery.sizeOf(context).height * 0.1,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  color: Colors.grey[800],
                ),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'C',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 35,
                    ),
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
