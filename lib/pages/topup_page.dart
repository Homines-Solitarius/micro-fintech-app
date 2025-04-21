import 'package:flutter/material.dart';

class TopupPage extends StatefulWidget {
  const TopupPage({super.key});

  @override
  State<TopupPage> createState() => _TopupPageState();
}

class _TopupPageState extends State<TopupPage> {
  List<String> options = [
    "Bank Transfer",
    "Bank Transfer",
    "Bank Transfer",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fund Wallet"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "Select a suitable option",
              style: TextStyle(fontSize: 18),
            ),
          ),
          ListView()
        ],
      ),
    );
  }
}
