import 'package:flutter/material.dart';

class LastTextBox extends StatelessWidget {
  const LastTextBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          width: 1,
          color: Colors.green,
        ),
      ),
      child: TextFormField(
        decoration: const InputDecoration(
          label: Text('random'),
          border: InputBorder.none,
        ),
        keyboardType: TextInputType.text,
      ),
    );
  }
}
