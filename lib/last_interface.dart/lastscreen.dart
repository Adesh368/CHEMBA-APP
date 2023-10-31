import 'package:chembaapp/last_interface.dart/educatebutton.dart';
import 'package:chembaapp/last_interface.dart/evenbutton.dart';
import 'package:chembaapp/last_interface.dart/faqbutton.dart';
import 'package:chembaapp/last_interface.dart/row1.dart';
import 'package:flutter/material.dart';

class LastScreen extends StatelessWidget {
  const LastScreen({super.key, required this.clickEvents});

  final void Function() clickEvents;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 62, horizontal: 40),
        child: Column(children: [
          Image.asset(
            'images/logo.png',
            width: 260,
          ),
          const SizedBox(height: 20),
          Row(
            //mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              EventsButton(onClickEvent: clickEvents),
              const Faqq(),
              const EducatedButton()
            ],
          ),
          const SizedBox(height: 10),
          const Row1(),
          const SizedBox(
            height: 20,
          ),
          const Row1(),
          const SizedBox(
            height: 20,
          ),
          const Row1(),
          const SizedBox(height: 20),
          const Row1(),
          const SizedBox(
            height: 20,
          ),
          const Row1(),
          const SizedBox(
            height: 20,
          ),
          const Row1(),
          const SizedBox(
            height: 20,
          ),
          const Row1(),
          const SizedBox(
            height: 20,
          ),
          const Row1(),
        ]),
      ),
    );
  }
}
