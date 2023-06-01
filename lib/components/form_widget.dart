import 'package:age_calculator/constants/constants.dart';
import 'package:flutter/material.dart';

class RowForm extends StatefulWidget {
  const RowForm({super.key});

  @override
  State<RowForm> createState() => _RowFormState();
}

class _RowFormState extends State<RowForm> {
  final _formKey = GlobalKey<FormState>();

  String _day = '';
  String _month = '';
  String _year = '';
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Form(
              key: _formKey,
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10.0),
                            child: Text(
                                style: TextStyle(
                                    letterSpacing: 5,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                    color: kgrey),
                                'DAY'),
                          ),
                          TextFormField(
                            keyboardType: TextInputType.number,
                            decoration: kformDecoration.copyWith(
                              label: FittedBox(
                                child: Text(
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                        color: kgrey),
                                    'DD'),
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty
                                  // ||
                                  // value < 1 ||
                                  // value > 31
                                  ) {
                                return 'Must be between 1 and 31';
                              }
                              return null;
                            },
                            onSaved: (value) {
                              _day = value!;
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: kformDecoration.copyWith(
                          label: FittedBox(
                            child: Text(
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: kgrey),
                              'MM',
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty
                              // ||
                              // value < 1 ||
                              // value > 31
                              ) {
                            return 'Must be between 1 and 31';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _day = value!;
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: kformDecoration.copyWith(
                          label: FittedBox(
                            child: Text(
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: kgrey),
                                'YYYY'),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty
                              // ||
                              // value < 1 ||
                              // value > 31
                              ) {
                            return 'Must be between 1 and 31';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _day = value!;
                        },
                      ),
                    ),
                  )
                ],
              )),
        ),
      ],
    );
  }
}
