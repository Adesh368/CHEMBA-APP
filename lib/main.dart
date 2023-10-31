import 'package:chembaapp/mainInterface/overallmain.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(body: SafeArea(child: OverallMain(),),),
    ),
  );
}
