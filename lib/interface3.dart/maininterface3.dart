import 'package:chembaapp/interface3.dart/educate.dart';
import 'package:chembaapp/interface3.dart/faq_button.dart';
import 'package:flutter/material.dart';
import 'package:chembaapp/interface3.dart/event_button.dart';

class Maininterface3 extends StatelessWidget {
  const Maininterface3({super.key, required this.clickEvents});

    final void Function() clickEvents;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 62, horizontal: 40),
      child: Column(children: [
        Image.asset(
          'images/logo.png',
          width: 248,
        ),
        const SizedBox(height: 20),
         Row(
          //mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            EventButton(onClickEvent: clickEvents,),
            Faq(),
           EducateButton(),
          ],
        ),
        const SizedBox(height: 20),
        Image.asset(
          'images/rectangle.png',
          width: 248,
        ),
        const SizedBox(height: 20),
        const Text(
          'Kibera clean up 16th may 2023',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        Container(color: const Color(0xffD9D9D9),height: 131,),
        const SizedBox(height: 20),
        const Text(
          'Kisumu recycling bin installation 19th may 2023',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, ),
        ),
        const SizedBox(height: 20),
        Expanded(child: Container(color: const Color(0xffD9D9D9),height: 131,)),
      ]),
    );
  }
}
