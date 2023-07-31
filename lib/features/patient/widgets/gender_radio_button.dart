import 'package:flutter/material.dart';
import 'package:patient_profile_management/themes/app_themes.dart';

// ignore: constant_identifier_names
enum Gender { Male, Female, Other }

class GenderRadioButton extends StatefulWidget {
  const GenderRadioButton({super.key});

  @override
  State<GenderRadioButton> createState() => _GenderRadioButtonState();
}

class _GenderRadioButtonState extends State<GenderRadioButton> {
  Gender? _gender = Gender.Male;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text('Male'),
          leading: Radio<Gender>(
            activeColor: PRIMARY_COLOR,
            value: Gender.Male,
            groupValue: _gender,
            onChanged: (Gender? value) {
              setState(() {
                _gender = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Female'),
          leading: Radio<Gender>(
            activeColor: PRIMARY_COLOR,
            value: Gender.Female,
            groupValue: _gender,
            onChanged: (Gender? value) {
              setState(() {
                _gender = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Other'),
          leading: Radio<Gender>(
            activeColor: PRIMARY_COLOR,
            value: Gender.Other,
            groupValue: _gender,
            onChanged: (Gender? value) {
              setState(() {
                _gender = value;
              });
            },
          ),
        ),
      ],
    );
  }
}
