import 'package:flutter/material.dart';

class ButtomC extends StatelessWidget {
  const ButtomC({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: InkWell(
        onTap: () {
          print('clicou');
        },
        child: Center(
          child: Container(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height * 0.1,
            color: Colors.grey[800],
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
    );
  }
}
