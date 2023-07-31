import 'package:flutter/material.dart';
import 'package:patient_profile_management/common/constants/ui_helpers.dart';

class KCard extends StatelessWidget {
  final Widget child;

  const KCard({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 6,
      child: Container(
        padding: mPadding,
        child: child,
      ),
    );
  }
}
