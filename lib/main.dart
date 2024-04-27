import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'gradient_container.dart';

void main() {
  runApp(
     MaterialApp(
      home: Scaffold(
         backgroundColor: Colors.white,//Color.fromARGB(255,47,5,120),
        body: GradientContainer(Colors.white, Colors.black),
      ),
     ),
  );
}
 