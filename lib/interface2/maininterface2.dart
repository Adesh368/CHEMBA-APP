import 'package:chembaapp/interface2/buttonwiget.dart';
import 'package:chembaapp/interface2/firstwidget.dart';
import 'package:chembaapp/interface2/secondwidget.dart';
import 'package:flutter/material.dart';

class Maininterface2 extends StatelessWidget {
  const Maininterface2({super.key, required this.eventscreen1});

  final void Function() eventscreen1;

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
          const SizedBox(height: 10),
          const LogIn(),
          const SizedBox(height: 20),
          const Secondpassword(),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text(
                  'forgotten password?',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
          SecondButton(
            eventscreen: eventscreen1,
          ),
          const Text(
            'Dont have an account yet?',
            style: TextStyle(color: Colors.black),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Register',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
