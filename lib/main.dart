import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:whatapp_messenger/common/routes/routes.dart';
import 'package:whatapp_messenger/common/theme/dark_theme.dart';
import 'package:whatapp_messenger/common/theme/light_theme.dart';
import 'package:whatapp_messenger/feature/auth/controller/auth_controller.dart';
import 'package:whatapp_messenger/feature/home/pages/home_page.dart';
import 'package:whatapp_messenger/feature/welcome/pages/welcome_page.dart';
import 'package:whatapp_messenger/firebase_options.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // These keeps the splash screen on until it loaded up all necessary data
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whats App',
      theme: lightTheme(),
      darkTheme: darkTheme(),
      themeMode: ThemeMode.system,
      home: ref.watch(userInfoAuthProvider).when(
        data: (user) {
          // These will make disappear the splash screen when data are loaded
          FlutterNativeSplash.remove();
          if (user == null) return const WelcomePage();
          return const HomePage();
        },
        error: (error, trace) {
          return const Scaffold(
            body: Center(
              child: Text('Something wrong happened!'),
            ),
          );
        },
        loading: () {
          return const SizedBox();
        },
      ),
      onGenerateRoute: Routes.onGenerateRoute,
    );
  }
}
