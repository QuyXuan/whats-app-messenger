import 'package:flutter/material.dart';
import 'package:whatapp_messenger/common/models/user_model.dart';
import 'package:whatapp_messenger/feature/auth/pages/login_page.dart';
import 'package:whatapp_messenger/feature/auth/pages/user_info_page.dart';
import 'package:whatapp_messenger/feature/chat/pages/chat_page.dart';
import 'package:whatapp_messenger/feature/contact/pages/contact_page.dart';
import 'package:whatapp_messenger/feature/home/pages/home_page.dart';
import 'package:whatapp_messenger/feature/welcome/pages/verification_page.dart';
import 'package:whatapp_messenger/feature/welcome/pages/welcome_page.dart';

class Routes {
  static const String welcome = 'welcome';
  static const String login = 'login';
  static const String verification = 'verification';
  static const String userInfo = 'user-info';
  static const String home = 'home';
  static const String contact = 'contact';
  static const String chat = 'chat';

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

      case contact:
        return MaterialPageRoute(
          builder: (context) => const ContactPage(),
        );

      case chat:
        final UserModel user = settings.arguments as UserModel;
        return MaterialPageRoute(
          builder: (context) => ChatPage(user: user),
        );

      case verification:
        final Map args = settings.arguments as Map;
        return MaterialPageRoute(
          builder: (context) => VerificationPage(
            smsCodeId: args['smsCodeId'],
            phoneNumber: args['phoneNumber'],
            countryCode: args['countryCode'],
          ),
        );

      case userInfo:
        final Map args = settings.arguments as Map;
        return MaterialPageRoute(
          builder: (context) => UserInfoPage(
            profileImageUrl: args['profileImageUrl'],
            countryCode: args['countryCode'],
          ),
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
