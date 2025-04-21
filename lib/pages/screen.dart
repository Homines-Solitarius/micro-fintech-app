import 'package:flutter/material.dart';
import 'package:wallet_ui/pages/chats_page.dart';
import 'package:wallet_ui/utils/app_colors.dart';

import 'wallet_page.dart';
import 'home_page.dart';
import 'profile_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

List pages = [
  HomePage(),
  WalletPage(),
  ChatsPage(),
  ProfilePage(),
];

int currentIndex = 0;

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: AppColors.white,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.wallet), label: "Wallet"),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_rounded), label: "Chats"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: "Profile"),
        ],
        backgroundColor: AppColors.accentPurple,
        elevation: 1,
        iconSize: 25,
        type: BottomNavigationBarType.fixed,
        fixedColor: AppColors.white,
        unselectedLabelStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: AppColors.white.withValues(alpha: .8),
        ),
        selectedIconTheme: IconThemeData(color: AppColors.white),
        unselectedItemColor: AppColors.white.withValues(alpha: .5),
        currentIndex: currentIndex,
        onTap: (value) {
          currentIndex = value;
          setState(() {});
        },
      ),
      body: SafeArea(child: pages[currentIndex]),
    );
  }
}
