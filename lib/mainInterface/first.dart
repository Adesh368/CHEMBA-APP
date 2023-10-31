import 'package:chembaapp/mainInterface/button_widget.dart';
import 'package:chembaapp/mainInterface/first_textbox.dart';
import 'package:chembaapp/mainInterface/last_textbox.dart';
import 'package:chembaapp/mainInterface/second_textbox.dart';
import 'package:chembaapp/mainInterface/third_textbox.dart';
import 'package:flutter/material.dart';

class First extends StatefulWidget {
  const First({super.key, required this.changescreen});

  final void Function() changescreen;

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  final userName = TextEditingController();
  final emailName = TextEditingController();
  final passwordName = TextEditingController();

  void onButtonPressed() {
    widget.changescreen();
  }

  void dispose() {
    userName.dispose();
    emailName.dispose();
    passwordName.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 62, horizontal: 97),
      child: Column(
        children: [
          Image.asset(
            'images/logo.png',
            width: 248,
          ),
          const SizedBox(
            height: 10,
          ),
          FirstTextBox(
            textFieldController: userName,
          ),
          const SizedBox(height: 20),
          SecondTextBox(
            emailNameController: emailName,
          ),
          const SizedBox(
            height: 20,
          ),
          ThirdTextBox(
            passwordController: passwordName,
          ),
          const SizedBox(
            height: 20,
          ),
          const LastTextBox(),
          const SizedBox(
            height: 20,
          ),
          ButtonWidget(
            userN: userName,
            pass: passwordName,
            mail: emailName,
            onWidget: onButtonPressed,
          ),
        ],
      ),
    );
  }
}
