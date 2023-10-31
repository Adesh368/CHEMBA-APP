import 'package:flutter/material.dart';

class EventButton extends StatefulWidget {
  const EventButton({super.key, required this.onClickEvent});

  final void Function() onClickEvent;
  @override
  State<EventButton> createState() => __EventButtonStateState();
}

class __EventButtonStateState extends State<EventButton> {

  void eventHandler() {
    widget.onClickEvent();
  }
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        padding:const EdgeInsets.fromLTRB(20, 20, 20, 20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xff528265),),
      onPressed: eventHandler, child: const Text('Event'),);
  }
}
