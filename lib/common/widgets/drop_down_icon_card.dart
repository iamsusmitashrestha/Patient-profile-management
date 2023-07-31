import 'package:flutter/material.dart';
import 'package:patient_profile_management/common/widgets/k_card.dart';

import '../constants/ui_helpers.dart';

class DropDownIconCard extends StatefulWidget {
  final Widget child;
  final Widget content;

  const DropDownIconCard(
      {super.key, required this.content, required this.child});

  @override
  State<DropDownIconCard> createState() => _DropDownIconCardState();
}

class _DropDownIconCardState extends State<DropDownIconCard> {
  bool showContent = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        KCard(
          child: Column(
            children: [
              widget.child,
              mWidthSpan,
              if (showContent)
                Column(
                  children: [
                    mHeightSpan,
                    widget.content,
                  ],
                ),
              InkWell(
                onTap: () {
                  setState(() {
                    showContent = !showContent;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 68),
                  child: Row(
                    children: [
                      showContent
                          ? const Text(
                              "View less",
                              style: TextStyle(color: Colors.purple),
                            )
                          : const Text(
                              "View more",
                              style: TextStyle(color: Colors.purple),
                            ),
                      showContent
                          ? const Icon(
                              Icons.keyboard_arrow_up_outlined,
                              color: Colors.purple,
                            )
                          : const Icon(
                              Icons.keyboard_arrow_down_outlined,
                              color: Colors.purple,
                            )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),

        //
      ],
    );
  }
}
