import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../constants/ui_helpers.dart';

class KDatePicker extends StatefulWidget {
  final Function(DateTime) onDatePicked;
  const KDatePicker({super.key, required this.onDatePicked});

  @override
  State<KDatePicker> createState() => _KDatePickerState();
}

class _KDatePickerState extends State<KDatePicker> {
  TextEditingController dateController = TextEditingController();

  @override
  void initState() {
    var now = DateTime.now();
    dateController.text = DateFormat("dd MMM, yyy").format(now);
    widget.onDatePicked(now);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: TextField(
        controller: dateController,
        enabled: false,
        decoration: const InputDecoration(
          contentPadding: sXPadding,
          suffixIcon: Icon(Icons.calendar_today),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black12,
            ),
          ),
        ),
      ),
      onTap: () async {
        FocusScope.of(context).requestFocus(FocusNode());
        DateTime? pickedDate = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(1900),
          lastDate: DateTime.now(),
        );
        if (pickedDate == null) return;

        dateController.text = DateFormat("dd MMM, yyy").format(pickedDate);

        widget.onDatePicked(pickedDate);
      },
    );
  }
}
