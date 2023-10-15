import 'package:flutter/material.dart';
import 'package:whatapp_messenger/feature/auth/pages/login_page.dart';
import 'package:whatapp_messenger/feature/auth/pages/user_info_page.dart';
import 'package:whatapp_messenger/feature/home/pages/home_page.dart';
import 'package:whatapp_messenger/feature/welcome/pages/verification_page.dart';
import 'package:whatapp_messenger/feature/welcome/pages/welcome_page.dart';

class Routes {
  static const String welcome = 'welcome';
  static const String login = 'login';
  static const String verification = 'verification';
  static const String userInfo = 'user-info';
  static const String home = 'home';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case welcome:
        return MaterialPageRoute(
          builder: (context) => const WelcomePage(),
        );
      case login:
        return MaterialPageRoute(
          builder: (context) => const LoginPage(),
        );
      case home:
        return MaterialPageRoute(
          builder: (context) => const HomePage(),
        );
      case verification:
        final Map args = settings.arguments as Map;
        return MaterialPageRoute(
          builder: (context) => VerificationPage(
            smsCodeId: args['smsCodeId'],
            phoneNumber: args['phoneNumber'],
          ),
        );
      case userInfo:
        return MaterialPageRoute(
          builder: (context) => const UserInfoPage(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(
            body: Center(
              child: Text('No page route provided'),
            ),
          ),
        );
    }
  }
}
