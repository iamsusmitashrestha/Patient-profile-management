import 'package:flutter/material.dart';

import '../models/patient.dart';

class PatientState extends ChangeNotifier {
  List<Patient> patients = [];

  void deletePatient() {
    //TODO: API call
  }
}
