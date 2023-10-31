import 'package:flutter/material.dart';

class SecondButton extends StatefulWidget {
  const SecondButton({super.key, required this.eventscreen});

  final void Function() eventscreen;

  @override
  State<SecondButton> createState() => _SecondButtonState();
}

class _SecondButtonState extends State<SecondButton> {
  void _Second() {
    widget.eventscreen();
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: const EdgeInsets.fromLTRB(70, 20, 70, 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xff528265),
      ),
      onPressed: _Second,
      child: const Text('Sign Up'),
    );
  }
}
