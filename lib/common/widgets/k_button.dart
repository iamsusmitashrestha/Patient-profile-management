import 'package:flutter/material.dart';
import 'package:patient_profile_management/common/constants/ui_helpers.dart';
import 'package:patient_profile_management/themes/app_themes.dart';

class KButton extends StatelessWidget {
  final Widget child;
  final void Function() onPressed;
  final bool isBusy;
  const KButton({
    super.key,
    required this.child,
    required this.onPressed,
    this.isBusy = false,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: mPadding,
        backgroundColor: PRIMARY_COLOR,
        fixedSize: Size.fromWidth(MediaQuery.of(context).size.width),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
      ),
      child: child,
    );
  }
}
