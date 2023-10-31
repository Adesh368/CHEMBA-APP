//import 'package:chembaapp/interface2/buttonwiget.dart';
import 'package:chembaapp/interface3.dart/maininterface3.dart';
import 'package:chembaapp/last_interface.dart/lastScreen.dart';
import 'package:chembaapp/mainInterface/first.dart';
import 'package:flutter/material.dart';
import 'package:chembaapp/interface2/maininterface2.dart';

class OverallMain extends StatefulWidget {
  const OverallMain({super.key});

  @override
  State<OverallMain> createState() => _OverallMainState();
}

class _OverallMainState extends State<OverallMain> {
  var activewidget = 'initializer';

  void screendisplay() {
    setState(() {
      activewidget = 'mainterface';
    });
  }

  void screendisplay3() {
    setState(() {
      activewidget = 'maininterface3';
    });
  }

  void lastscreen() {
    setState(() {
      activewidget = 'lastscreen';
    });
  }

  void firstscreen() {
    setState(() {
      activewidget = 'initializer';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget firstUi = First(
      changescreen: screendisplay,
    );
    //Widget SecondButt = SecondButton(eventscreen: screendisplay3,);
    if (activewidget == 'mainterface') {
      firstUi = Maininterface2(eventscreen1: screendisplay3);
    }

    if (activewidget == 'maininterface3') {
      firstUi = Maininterface3(
        clickEvents: lastscreen,
      );
    }

    if (activewidget == 'lastscreen') {
      firstUi = LastScreen(clickEvents: firstscreen);
    }
    return firstUi;
  }
}
