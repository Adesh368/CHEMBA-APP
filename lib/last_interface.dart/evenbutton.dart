import 'package:flutter/material.dart';

class EventsButton extends StatefulWidget {
  const EventsButton({super.key, required this.onClickEvent});

  final void Function() onClickEvent;
  @override
  State<EventsButton> createState() => __EventsButtonStateState();
}

class __EventsButtonStateState extends State<EventsButton> {
  void ventHandler() {
    widget.onClickEvent();
  }

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
      onPressed: ventHandler,
      child: const Text('Event'),
    );
  }
}
