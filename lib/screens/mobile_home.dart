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
    return const Scaffold(
      backgroundColor: Color(0xffF0F0F0),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 150,
            ),
            SizedBox(height: 400, child: Center(child: FillContainer())),
            SizedBox(
              height: 150,
            )
          ],
        ),
      ),
    );
  }
}
