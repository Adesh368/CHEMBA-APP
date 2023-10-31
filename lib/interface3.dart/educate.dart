import 'package:flutter/material.dart';

class EducateButton extends StatefulWidget {
  const EducateButton({super.key,});

  @override
  State<EducateButton> createState() => __EducateButtonState();
}

class __EducateButtonState extends State<EducateButton> {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        padding:const EdgeInsets.fromLTRB(20, 20, 20, 20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xff528265),),
      onPressed: () {}, child: const Text('Educate'),);
  }
}
