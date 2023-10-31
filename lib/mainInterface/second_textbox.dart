import 'package:flutter/material.dart';

class SecondTextBox extends StatelessWidget {
  const SecondTextBox({super.key, required this.emailNameController});

  final TextEditingController emailNameController;

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
        controller: emailNameController,
        decoration: const InputDecoration(
          label: Text('email'),
          border: InputBorder.none,
        ),
        keyboardType: TextInputType.emailAddress,
      ),
    );
  }
}
