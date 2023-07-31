import 'package:flutter/material.dart';
import 'package:patient_profile_management/common/widgets/k_button.dart';
import 'package:patient_profile_management/common/widgets/k_date_picker.dart';
import 'package:patient_profile_management/features/patient/widgets/gender_radio_button.dart';
import '../../../themes/app_themes.dart';
import 'package:auto_route/auto_route.dart';
import 'package:patient_profile_management/common/constants/ui_helpers.dart';
import 'package:patient_profile_management/common/widgets/k_text_field.dart';

@RoutePage()
class AddPatientView extends StatefulWidget {
  const AddPatientView({super.key});

  @override
  State<AddPatientView> createState() => _AddPatientViewState();
}

class _AddPatientViewState extends State<AddPatientView> {
  DateTime? selectedDate;
  bool isChecked = false;

  setDate(pickedDate) {
    selectedDate = pickedDate;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: PRIMARY_COLOR,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text("Add patients details"),
      ),
      body: ListView(
        padding: mPadding,
        children: [
          mHeightSpan,
          const Row(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text("Profile picture"),
              ),
              xsWidthSpan,
              Text(
                "*",
                style: TextStyle(color: Colors.red),
              )
            ],
          ),
          sHeightSpan,
          Stack(
            children: [
              Container(
                width: 160,
                height: 160,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: CHIP_GREY,
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: PRIMARY_COLOR,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.edit_outlined),
                  color: Colors.white,
                  autofocus: true,
                ),
              ),
            ],
          ),
          mHeightSpan,
          KTextFormField(
            label: "Full Name",
            validator: (value) {
              String pattern = r'^[a-z A-Z,.\-]+$';
              RegExp regExp = RegExp(pattern);
              if (value!.isEmpty) {
                return 'Please enter full name';
              } else if (!regExp.hasMatch(value)) {
                return 'Please enter valid full name';
              }
              return null;
            },
          ),
          mHeightSpan,
          KTextFormField(
            label: "Email",
            validator: (value) {
              RegExp regex = RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$");
              if (!regex.hasMatch(value!)) return "Invalid email";
              return null;
            },
          ),
          mHeightSpan,
          KTextFormField(
            label: "Contact",
            keyboardType: TextInputType.phone,
            validator: (value) {
              if (value!.length != 10) {
                return 'Mobile Number must be of 10 digit';
              } else {
                return null;
              }
            },
          ),
          mHeightSpan,
          const Row(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text("Date of Birth"),
              ),
              xsWidthSpan,
              Text(
                "*",
                style: TextStyle(color: Colors.red),
              )
            ],
          ),
          sHeightSpan,
          KDatePicker(onDatePicked: setDate),
          mHeightSpan,
          Align(
            // alignment: Alignment.topLeft,
            child: CheckboxListTile(
                checkColor: Colors.white,
                activeColor: PRIMARY_COLOR,
                title: const Text("Mark patient as special attention"),
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value!;
                  });
                }),
          ),
          mHeightSpan,
          const Align(
            alignment: Alignment.centerLeft,
            child: Text("Gender"),
          ),
          const GenderRadioButton(),
          mHeightSpan,
          const KTextFormField(
            label: "Address",
            isRequired: false,
          ),
          mHeightSpan,
          const KTextFormField(
            label: "Notes",
            maxLines: 2,
            isRequired: false,
          ),
          mHeightSpan,
          KButton(
              child: const Text("Add patient"),
              onPressed: () {
                Navigator.of(context).pop();
              }),
        ],
      ),
    );
  }
}
