import 'package:age_calculator/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RowForm extends StatefulWidget {
  const RowForm({super.key});

  @override
  State<RowForm> createState() => _RowFormState();
}

bool isDesktop(BuildContext context) =>
    MediaQuery.of(context).size.width >= 600;

class _RowFormState extends State<RowForm> {
  final _formKey = GlobalKey<FormState>();

  String getValueOrDash(int value) {
    return value == 0 ? "--" : value.toString();
  }

  int years = 0;
  int months = 0;
  int days = 0;
  final String svg = 'assets/icon-arrow.svg';
  String day = '';
  String month = '';
  String year = '';
  bool ontap = true;

  int currentYear = DateTime.now().year;
  int currentMonth = DateTime.now().month;
  int currentDay = DateTime.now().day;

  void _ageCalculator() {
    setState(() {
      try {
        years = currentYear - int.parse(year);
        months = currentMonth - int.parse(month);
        days = currentDay - int.parse(day);

        if (months < 0 || (months == 0 && days < 0)) {
          years--;
          if (currentMonth < int.parse(month)) {
            months = (currentMonth + 12) - int.parse(month);
          } else {
            months = currentMonth - int.parse(month);
          }
        }

        if (currentDay < int.parse(day)) {
          int previousMonth = currentMonth == 1 ? 12 : currentMonth - 1;
          int previousYear = currentMonth == 1 ? currentYear - 1 : currentYear;
          days = DateTime(previousYear, previousMonth + 1, 0).day -
              int.parse(day) +
              currentDay;
        } else {
          days = currentDay - int.parse(day);
        }
      } catch (e) {
        Text('Error: $e');
      }
    });
  }

  void _checkAge() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      _ageCalculator();
      _formKey.currentState!.reset();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 4,
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 4,
                    child: Form(
                      key: _formKey,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10.0),
                                  child: Text(
                                      style: TextStyle(
                                          letterSpacing: 3,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10,
                                          color: ColorManager.kgreyThick),
                                      'DAY'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20.0),
                                  child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    decoration: kformDecoration.copyWith(
                                      label: FittedBox(
                                        child: Text(
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.bold,
                                                fontSize: 25,
                                                color: ColorManager.kgreyThick),
                                            'DD'),
                                      ),
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'This field is required';
                                      } else if (int.tryParse(value) == null) {
                                        return 'Must be a valid number';
                                      } else if (int.tryParse(value)! < 1 ||
                                          int.tryParse(value)! > 31) {
                                        return 'Must be a valid day';
                                      } else {
                                        return null;
                                      }
                                    },
                                    onSaved: (value) {
                                      day = value!;
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10.0),
                                  child: Text(
                                      style: TextStyle(
                                          letterSpacing: 3,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10,
                                          color: ColorManager.kgreyThick),
                                      'MONTH'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20.0),
                                  child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    decoration: kformDecoration.copyWith(
                                      label: FittedBox(
                                        child: Text(
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 25,
                                              color: ColorManager.kgreyThick),
                                          'MM',
                                        ),
                                      ),
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'This field is required';
                                      } else if (int.tryParse(value) == null) {
                                        return 'Must be a valid number';
                                      } else if (int.tryParse(value)! < 1 ||
                                          int.tryParse(value)! > 12) {
                                        return 'Must be a valid month';
                                      } else {
                                        return null;
                                      }
                                    },
                                    onSaved: (value) {
                                      month = value!;
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10.0),
                                  child: Text(
                                      style: TextStyle(
                                          letterSpacing: 3,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10,
                                          color: ColorManager.kgreyThick),
                                      'YEAR'),
                                ),
                                Padding(
                                  padding: isDesktop(context)
                                      ? const EdgeInsets.only(right: 20.0)
                                      : const EdgeInsets.only(right: 0),
                                  child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    decoration: kformDecoration.copyWith(
                                      label: FittedBox(
                                        child: Text(
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.bold,
                                                fontSize: 25,
                                                color: ColorManager.kgreyThick),
                                            'YYYY'),
                                      ),
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'This field is required';
                                      } else if (int.tryParse(value) == null) {
                                        return 'Must be a valid number';
                                      } else if (int.tryParse(value)! <= 0 ||
                                          int.tryParse(value)! > 2023) {
                                        return 'Must be in the past';
                                      }
                                      return null;
                                    },
                                    onSaved: (value) {
                                      year = value!;
                                    },
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  if (isDesktop(context))
                    const Spacer(
                      flex: 2,
                    )
                ],
              ),
              isDesktop(context)
                  ? Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Divider(
                              color: ColorManager.kgrey,
                              thickness: 1,
                              height: 0.5,
                            ),
                          ),
                          InkWell(
                            onTap: _checkAge,
                            child: CircleAvatar(
                              radius: isDesktop(context) ? 40 : 30,
                              backgroundColor: ColorManager.kpurple,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: SvgPicture.asset(
                                  svg,
                                  height: 30,
                                  semanticsLabel: 'Age calculator Enter',
                                  colorFilter: const ColorFilter.mode(
                                      Colors.white, BlendMode.srcIn),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: Stack(
                        children: [
                          SizedBox(
                            height: 70,
                            width: double.infinity,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Divider(
                                    color: ColorManager.kgrey,
                                    thickness: 1,
                                    height: 0.5,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned.fill(
                            child: Align(
                              alignment: Alignment.center,
                              child: InkWell(
                                onTap: _checkAge,
                                child: CircleAvatar(
                                  radius: 25,
                                  backgroundColor: ColorManager.kpurple,
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: SvgPicture.asset(
                                      svg,
                                      height: 25,
                                      semanticsLabel: 'Age calculator Enter',
                                      colorFilter: const ColorFilter.mode(
                                          Colors.white, BlendMode.srcIn),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )),
            ],
          ),
        ),
        Expanded(
          flex: 3,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FittedBox(
                  fit: BoxFit.contain, child: timeDisplay(years, ' years')),
              FittedBox(
                  fit: BoxFit.contain, child: timeDisplay(months, ' months')),
              FittedBox(fit: BoxFit.contain, child: timeDisplay(days, ' days')),
            ],
          ),
        )
      ],
    );
  }

  RichText timeDisplay(int initial1, String initial2) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: '$initial1',
            style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                fontSize: isDesktop(context) ? 35 : 30,
                fontStyle: FontStyle.italic,
                color: ColorManager.kpurple),
          ),
          TextSpan(
            text: initial2,
            style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                fontSize: isDesktop(context) ? 35 : 30,
                fontStyle: FontStyle.italic,
                color: ColorManager.kblack),
          ),
        ],
      ),
    );
  }
}
