import 'package:flutter/material.dart';
import 'package:saulefna/presentation/screens/auth/change_password_screen.dart';
import 'package:saulefna/presentation/screens/auth/login_screen.dart';
import 'package:saulefna/presentation/screens/auth/otp_screen.dart';
import 'package:saulefna/presentation/screens/auth/reset_password.dart';
import 'package:saulefna/presentation/screens/auth/signup_screen.dart';
import 'package:saulefna/presentation/screens/history_life.dart';
import 'package:saulefna/presentation/screens/level_screen.dart';
 import 'package:saulefna/presentation/screens/massage_screen.dart';
import 'package:saulefna/presentation/screens/payment_screen.dart';
import 'package:saulefna/presentation/screens/profile_screen.dart';
import 'package:saulefna/presentation/screens/spalsh_screen.dart';
import 'package:saulefna/presentation/screens/visitor.dart';
import 'package:saulefna/presentation/screens/wallet_screen.dart';

class Routes {
  static const String splash = "/Splash";
  static const String login = "/login";
  static const String signUp = "/signUp";

  static const String otp = "/Otp";
  static const String resetPassword = "/resetPassword";
  static const String changePassword = "/changePassword";
  static const String homeScreen = "/homeScreen";
  static const String massageScreen = "/massageScreen";
  static const String profileScreen = "/profileScreen";
  static const String walletScreen = "/walletScreen";
  static const String paymentScreen = "/paymentScreen";
  static const String visitorScreen = "/visitorScreen";
  static const String historyLife = "/historyLife";
  static const String levelScreen = "/levelScreen";


}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case Routes.signUp:
        return MaterialPageRoute(builder: (_) => const SignUpScreen());
      case Routes.resetPassword:
        return MaterialPageRoute(builder: (_) => const ResetPassword());
      case Routes.otp:
        return MaterialPageRoute(builder: (_) => const OtpScreen());
      case Routes.changePassword:
        return MaterialPageRoute(builder: (_) => const ChangePasswordScreen());
      // case Routes.homeScreen:
      //   return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.massageScreen:
        return MaterialPageRoute(builder: (_) => const MassageScreen());
      case Routes.profileScreen:
        return MaterialPageRoute(builder: (_) => const ProfileScreen());
      case Routes.walletScreen:
        return MaterialPageRoute(builder: (_) => const WalletScreen());
      case Routes.paymentScreen:
        return MaterialPageRoute(builder: (_) => const PaymentScreen());
      case Routes.visitorScreen:
        return MaterialPageRoute(builder: (_) => const VisitorScreen());
      case Routes.historyLife:
        return MaterialPageRoute(builder: (_) => const HistoryLife());
      case Routes.levelScreen:
        return MaterialPageRoute(builder: (_) => const LevelScreen());
    }
    return unDefinedRoute();
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
// ignore: prefer_const_constructors
        builder: (context) => Container());
  }
}
