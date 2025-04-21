import 'package:flutter/material.dart';
import 'package:wallet_ui/pages/onboarding_page.dart';
import 'package:wallet_ui/utils/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Sync Pay',
        home: OnboardingPage(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            backgroundColor: AppColors.white,
            iconTheme: IconThemeData(size: 28),
            titleSpacing: 3,
            elevation: 0,
          ),
          scaffoldBackgroundColor: AppColors.white,
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 117, 19, 197),
          ),
        ));
  }
}
