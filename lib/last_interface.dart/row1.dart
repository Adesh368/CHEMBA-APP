import 'package:flutter/material.dart';

class Row1 extends StatelessWidget {
  const Row1({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
          decoration: BoxDecoration(
            color: Color(0xffd9d9d9),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Color(0xffd9d9d9), width: 1),
          ),
          child: const Text('What is chamber and how does it work?'),
        ),
      ],
    );
  }
}
