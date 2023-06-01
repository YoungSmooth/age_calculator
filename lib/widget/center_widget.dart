import 'package:age_calculator/components/form_widget.dart';
import 'package:age_calculator/constants/constants.dart';
import 'package:flutter/material.dart';

class FillContainer extends StatefulWidget {
  const FillContainer({super.key});

  @override
  State<FillContainer> createState() => _FillContainerState();
}

class _FillContainerState extends State<FillContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height / 1.8,
      width: MediaQuery.of(context).size.width / 1.8,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(160),
          bottomLeft: Radius.circular(20),
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              width: 400,
              child: RowForm(),
            ),
            Row(
              children: [
                Divider(
                  height: 1,
                  color: kgrey,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
