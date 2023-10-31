import 'package:flutter/material.dart';

class ButtonWidget extends StatefulWidget {
  const ButtonWidget(
      {super.key,
      required this.userN,
      required this.mail,
      required this.pass,
      required this.onWidget});

  final TextEditingController userN;
  final TextEditingController mail;
  final TextEditingController pass;
  final void Function() onWidget;

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  void onButtonPressed() {
    widget.onWidget();
  }

  void userInput() {
    final condtions1 = widget.userN.text.isEmpty &&
        widget.mail.text.isEmpty &&
        widget.pass.text.isEmpty;
    if (condtions1) {
      return;
    }
    //print(widget.userN.text);
    //print(widget.mail.text);
    //print(widget.pass.text);
    onButtonPressed();
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
      onPressed: userInput,
      child: const Text('Sign Up'),
    );
  }
}
