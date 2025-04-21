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
  ProfilePage(),
  ChatsPage(),
];

int currentIndex = 0;

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: AppColors.background,
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.wallet), label: "Wallet"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.chat_rounded), label: "Chats"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle), label: "Profile"),
            ],
            backgroundColor: Colors.transparent.withValues(alpha: 0),
            elevation: 0,
            iconSize: 25,
            unselectedLabelStyle: TextStyle(fontSize: 14),
            selectedIconTheme: IconThemeData(color: AppColors.accentPurple),
            selectedLabelStyle: TextStyle(
                color: AppColors.accentPurple, fontWeight: FontWeight.w600),
            currentIndex: currentIndex,
            onTap: (value) {
              currentIndex = value;
              setState(() {});
            },
          ),
        ),
      ),
      body: SafeArea(child: pages[currentIndex]),
    );
  }
}
