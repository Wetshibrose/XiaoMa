import 'package:flutter/cupertino.dart';
import 'package:xiaoma/auth/auth.dart';
import 'package:xiaoma/dashboard/screens/dashboard_screen.dart';
import 'package:xiaoma/home/home.dart';
import 'package:xiaoma/onboarding/onboarding.dart';
import 'package:xiaoma/profile/profile.dart';

Route? handleRoutes(RouteSettings settings) {
  switch (settings.name) {
    // onboard screen
    case OnBoardScreen.routeName:
      return CupertinoPageRoute(
        builder: (context) {
          return const OnBoardScreen();
        },
      );

    // Auth screens
    case LoginScreen.routeName:
      return CupertinoPageRoute(
        builder: (context) {
          return const LoginScreen();
        },
      );

    case ForgotPasswordScreen.routeName:
      return CupertinoPageRoute(
        builder: (context) {
          return const ForgotPasswordScreen();
        },
      );

    case RegistrationScreen.routeName:
      return CupertinoPageRoute(
        builder: (context) {
          return const RegistrationScreen();
        },
      );

    case OtpScreen.routeName:
      return CupertinoPageRoute(
        builder: (context) {
          return OtpScreen(
            arguments: settings.arguments as Map<String, dynamic>,
          );
        },
      );

    case SetPassWordScreen.routeName:
      return CupertinoPageRoute(
        builder: (context) {
          return const SetPassWordScreen();
        },
      );

    // Dashsboard
    case DashboardScreen.routeName:
      return CupertinoPageRoute(
        builder: (context) {
          return const DashboardScreen();
        },
      );

    // Homescreen
    case HomeScreen.routeName:
      return CupertinoPageRoute(
        builder: (context) {
          return const HomeScreen();
        },
      );

    case ConfirmRideScreen.routeName:
      return CupertinoPageRoute(
        builder: (context) {
          return const ConfirmRideScreen();
        },
      );

      // Profile
      case PromoCodeScreen.routeName:
      return CupertinoPageRoute(
        builder: (context) {
          return const PromoCodeScreen();
        },
      );

    default:
      break;
  }
}
