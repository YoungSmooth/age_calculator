import 'package:age_calculator/widget/center_widget.dart';
import 'package:flutter/material.dart';

class MobileHome extends StatefulWidget {
  const MobileHome({super.key});

  @override
  State<MobileHome> createState() => _MobileHomeState();
}

class _MobileHomeState extends State<MobileHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // height: MediaQuery.of(context).size.height,
        // width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(color: Color(0xffF0F0F0)),
        child: Column(
          children: [
            Expanded(flex: 1, child: Container()),
            const Expanded(flex: 4, child: FillContainer()),
            Expanded(flex: 2, child: Container()),
          ],
        ),
      ),
    );
  }
}
