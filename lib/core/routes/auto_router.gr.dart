// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:patient_profile_management/features/patient/views/add_patient_view.dart'
    as _i3;
import 'package:patient_profile_management/features/patient/views/home_view.dart'
    as _i4;
import 'package:patient_profile_management/features/sigin/views/signin_view.dart'
    as _i2;
import 'package:patient_profile_management/features/signup/views/signup_view.dart'
    as _i1;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    SignupRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.SignupView(),
      );
    },
    SigninRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.SigninView(),
      );
    },
    AddPatientRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.AddPatientView(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.HomeView(),
      );
    },
  };
}

/// generated route for
/// [_i1.SignupView]
class SignupRoute extends _i5.PageRouteInfo<void> {
  const SignupRoute({List<_i5.PageRouteInfo>? children})
      : super(
          SignupRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignupRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i2.SigninView]
class SigninRoute extends _i5.PageRouteInfo<void> {
  const SigninRoute({List<_i5.PageRouteInfo>? children})
      : super(
          SigninRoute.name,
          initialChildren: children,
        );

  static const String name = 'SigninRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i3.AddPatientView]
class AddPatientRoute extends _i5.PageRouteInfo<void> {
  const AddPatientRoute({List<_i5.PageRouteInfo>? children})
      : super(
          AddPatientRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddPatientRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i4.HomeView]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute({List<_i5.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}
