import 'package:flutter/material.dart';

class Faq extends StatefulWidget {
  const Faq({super.key});

  @override
  State<Faq> createState() => _FaqState();
}

class _FaqState extends State<Faq> {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        padding:const EdgeInsets.fromLTRB(20, 20, 20, 20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
       // foregroundColor: Colors.white,
        backgroundColor: const Color(0xff528265),),
      onPressed: () {}, child: const Text('Faq', style: TextStyle(color: Colors.black),),);
  }
}