import 'package:age_calculator/widget/center_widget.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // height: MediaQuery.of(context).size.height,
        // width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(color: Color(0xffF0F0F0)),
        child: Column(
          children: [
            Expanded(child: Container()),
            const Expanded(flex: 4, child: FillContainer()),
            Expanded(child: Container()),
          ],
        ),
      ),
    );
  }
}
