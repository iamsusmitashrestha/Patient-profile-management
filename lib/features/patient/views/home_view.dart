import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:patient_profile_management/common/constants/ui_helpers.dart';
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
            return Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: DropDownIconCard(
                content: const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 68),
                      child: Row(
                        children: [
                          Text("DOB: "),
                          sWidthSpan,
                          Text("25 July 2001"),
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
                            Text(
                              "9845157526",
                              style: TextStyle(color: DARK_GREY),
                            ),
                            Text(
                              "susmita@gmail.com",
                              style: TextStyle(color: DARK_GREY),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Expanded(
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.delete,
                              color: PRIMARY_COLOR,
                            ),
                          ),
                        )
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
