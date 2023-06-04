import 'package:flutter/material.dart';

InputDecoration kformDecoration = InputDecoration(
  label: const Text(
    '',
    style: TextStyle(
        color: Colors.black,
        fontFamily: 'Poppins',
        fontSize: 30,
        fontWeight: FontWeight.bold),
  ),
  errorStyle: const TextStyle(
      fontFamily: 'Poppins',
      fontSize: 9,
      fontWeight: FontWeight.normal,
      fontStyle: FontStyle.italic),
  labelStyle: const TextStyle(
      color: Colors.black,
      fontFamily: 'Poppins',
      fontSize: 30,
      fontWeight: FontWeight.bold),
  focusedBorder: const OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xff8753E7)),
  ),
  enabledBorder: OutlineInputBorder(
    borderRadius: const BorderRadius.all(
      Radius.circular(5.0),
    ),
    borderSide: BorderSide(color: ColorManager.kgrey),
  ),
  border: OutlineInputBorder(
    borderRadius: const BorderRadius.all(
      Radius.circular(5),
    ),
    borderSide: BorderSide(color: ColorManager.kgrey),
  ),
);

class ColorManager {
  static const Color kblack = Colors.black;
  static Color kgrey = Colors.grey.shade300;
  static Color kgreyThick = Colors.grey.shade600;
  static Color kpurple = const Color(0xff8753E7);
}
