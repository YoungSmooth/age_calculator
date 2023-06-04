import 'package:flutter/material.dart';

String getValueOrDash(int value) {
  return value == 0 ? "--" : value.toString();
}
