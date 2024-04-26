import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 165, 132, 132),
      appBar: AppBar(
        title: Text(widget.title), //pegando o nome do titulo
        backgroundColor: const Color.fromARGB(255, 165, 132, 132),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: <Widget>[
                Container(
                  width: MediaQuery.sizeOf(context).width * 0.95,
                  height: MediaQuery.sizeOf(context).height * 0.2,
                  color: Colors.red,
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      '$_counter',
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
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
                    print('apertou$index');
                  },
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(2),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 0.23,
                        height: MediaQuery.sizeOf(context).height * 0.23,
                        color: const Color.fromARGB(255, 186, 160, 160),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            buttons[index],
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
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
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: InkWell(
                onTap: () {
                  print('clicou');
                },
                child: Center(
                  child: Container(
                    width: MediaQuery.sizeOf(context).width,
                    height: MediaQuery.sizeOf(context).height * 0.1,
                    color: Colors.red,
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text(
                        'C',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
