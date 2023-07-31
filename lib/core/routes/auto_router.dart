import 'package:auto_route/auto_route.dart';
import 'package:patient_profile_management/features/patient/views/add_patient_view.dart';

import 'auto_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SignupRoute.page, path: "/", initial: true),
        AutoRoute(page: SigninRoute.page, path: "/signin"),
        AutoRoute(page: HomeRoute.page, path: "/home"),
        AutoRoute(page: AddPatientRoute.page, path: "/addpatient"),
      ];
}
