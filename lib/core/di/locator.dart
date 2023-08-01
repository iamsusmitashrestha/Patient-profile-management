import 'package:get_it/get_it.dart';
import 'package:patient_profile_management/features/patient/states/patient_state.dart';

final locator = GetIt.instance;

void setup() {
  locator.registerLazySingleton<PatientState>(() => PatientState());
}
