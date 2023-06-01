import 'package:flutter/material.dart';

InputDecoration kformDecoration = const InputDecoration(
    label: Text(''),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(1.0),
      ),
    ),
    border: OutlineInputBorder(borderRadius: BorderRadius.zero)
    // BorderRadius.all(
    //   Radius.circular(1.0),
    // ),

    );

Color kblack = Colors.black;
Color kgrey = Colors.grey.shade900;
Color kpurple = const Color(0xff8753E7);
