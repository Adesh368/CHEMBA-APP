import 'package:flutter/material.dart';

class ThirdTextBox extends StatelessWidget {
  const ThirdTextBox({super.key, required this.passwordController});

  final TextEditingController passwordController;
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
        controller: passwordController,
        decoration: const InputDecoration(
          label: Text('password'),
          border: InputBorder.none,
        ),
        keyboardType: TextInputType.visiblePassword,
      ),
    );
  }
}
