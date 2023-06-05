import 'package:age_calculator/components/form_widget.dart';
import 'package:flutter/material.dart';

class FillContainer extends StatefulWidget {
  const FillContainer({super.key});

  @override
  State<FillContainer> createState() => _FillContainerState();
}

class _FillContainerState extends State<FillContainer> {
  bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 600;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        margin:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        // height: isDesktop(context)
        //     ? MediaQuery.of(context).size.height / 1
        //     : MediaQuery.of(context).size.height / 2,
        width: isDesktop(context)
            ? MediaQuery.of(context).size.width / 1.8
            : MediaQuery.of(context).size.width / 1.1,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomRight: isDesktop(context)
                ? const Radius.circular(160)
                : const Radius.circular(100),
            bottomLeft: const Radius.circular(20),
            topLeft: const Radius.circular(20),
            topRight: const Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: isDesktop(context)
              ? const EdgeInsets.all(35.0)
              : const EdgeInsets.all(25.0),
          child: const RowForm(),
        ),
      ),
    );
  }
}
