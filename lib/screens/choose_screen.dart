import 'package:age_calculator/screens/desktop_home.dart';
import 'package:age_calculator/screens/mobile_home.dart';
import 'package:flutter/material.dart';

class ChooseScreen extends StatefulWidget {
  const ChooseScreen({super.key});

  @override
  State<ChooseScreen> createState() => _ChooseScreenState();
}

class _ChooseScreenState extends State<ChooseScreen> {
  bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 600;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: (isDesktop(context)) ? const DesktopHome() : const MobileHome(),
    );
  }
}
