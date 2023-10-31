import 'package:flutter/material.dart';

class EducatedButton extends StatefulWidget {
  const EducatedButton({
    super.key,
  });

  @override
  State<EducatedButton> createState() => __EducatedButtonState();
}

class __EducatedButtonState extends State<EducatedButton> {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xff528265),
      ),
      onPressed: () {},
      child: const Text('Educate'),
    );
  }
}
