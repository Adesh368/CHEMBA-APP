import 'package:flutter/material.dart';

class FirstTextBox extends StatelessWidget {
  const FirstTextBox({super.key, required this.textFieldController});

  final TextEditingController textFieldController;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          width: 1,
          color: Colors.green,
        ),
      ),
      child: TextFormField(
        controller: textFieldController,
        decoration: const InputDecoration(
          label: Text('user name'),
          border: InputBorder.none,
        ),
        keyboardType: TextInputType.text,
      ),
    );
  }
}
