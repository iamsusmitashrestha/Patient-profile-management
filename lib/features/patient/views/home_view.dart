import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:patient_profile_management/common/constants/ui_helpers.dart';
import 'package:patient_profile_management/core/di/locator.dart';
import 'package:patient_profile_management/features/patient/states/patient_state.dart';
import 'package:patient_profile_management/features/patient/widgets/details_row.dart';
import 'package:patient_profile_management/themes/app_themes.dart';

import '../../../common/widgets/drop_down_icon_card.dart';

@RoutePage()
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool showContent = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: PRIMARY_COLOR,
        title: const Text(
          "Patients List",
          style: TextStyle(),
        ),
        actions: [
          Center(
            child: InkWell(
              onTap: () {
                AutoRouter.of(context).pushNamed('/addpatient');
              },
              child: const Text(
                "Add patient",
                style: TextStyle(
                  color: Colors.purple,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
      body: ListView.builder(
          padding: mPadding,
          itemCount: 4,
          itemBuilder: ((context, index) {
            var patientState = locator.get<PatientState>();
            return Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: DropDownIconCard(
                content: const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 68),
                      child: Column(
                        children: [
                          DetailsRow(title: "Contact: ", content: "9845157526"),
                          DetailsRow(
                              title: "Email: ", content: "susmita@gmail.com"),
                          DetailsRow(title: "DOB: ", content: "25 July 2001"),
                          DetailsRow(title: "Address: ", content: "Kathmandu"),
                          DetailsRow(
                              title: "Notes: ", content: "High blood pressure"),
                        ],
                      ),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30.0),
                          child: Image.asset(
                            "assets/images/cat.jpg",
                            width: 60,
                            height: 60,
                            fit: BoxFit.cover,
                          ),
                        ),
                        sWidthSpan,
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Susmita Shrestha",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Expanded(
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.edit,
                              color: PRIMARY_COLOR,
                            ),
                          ),
                        ),
                        sWidthSpan,
                        Expanded(
                          child: IconButton(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext ctx) {
                                    return AlertDialog(
                                      icon: Align(
                                        alignment: Alignment.topRight,
                                        child: IconButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            icon: const Icon(
                                              Icons.close,
                                              color: Colors.red,
                                            )),
                                      ),
                                      title: const Align(
                                        alignment: Alignment.topLeft,
                                        child: Text('Please Confirm'),
                                      ),
                                      content: const Text(
                                          'Are you sure to delete patient?'),
                                      actions: [
                                        TextButton(
                                            onPressed: () {
                                              patientState.deletePatient();
                                              Navigator.of(context).pop();
                                            },
                                            child: const Text('Yes')),
                                        TextButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: const Text('No'))
                                      ],
                                    );
                                  });
                            },
                            icon: const Icon(
                              Icons.delete,
                              color: PRIMARY_COLOR,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          })),
    );
  }
}
