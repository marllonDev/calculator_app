import 'package:flutter/material.dart';

class CustomGridView extends StatelessWidget {
   CustomGridView({super.key});

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
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: buttons.length,
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
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
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(50),
                  ),
                  border: Border.all(
                    color: Colors.black,
                    width: 3,
                  ),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    buttons[index],
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
