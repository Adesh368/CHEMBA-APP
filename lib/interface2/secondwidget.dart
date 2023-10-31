import 'package:flutter/material.dart';

class Secondpassword extends StatelessWidget {
  const Secondpassword({super.key});

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
        decoration: const InputDecoration(
          label: Text('password'),
          border: InputBorder.none,
        ),
        keyboardType: TextInputType.visiblePassword,
      ),
    );
  }
}
