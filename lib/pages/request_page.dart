import 'package:flutter/material.dart';
import 'package:wallet_ui/components/slide_button.dart';
import 'package:wallet_ui/models/user_model.dart';

import '../utils/app_colors.dart';

class RequestPage extends StatelessWidget {
  const RequestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Request"),
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Center(
                  child: Icon(
                Icons.attach_money,
                size: 100,
              )),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  "Enter sender's username, email or tag to request money",
                  style: TextStyle(fontSize: 17),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              _detailsContainer("Username or tag"),
            ],
          ),
        ],
      ),
    );
  }

  Widget _detailsContainer(String text) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: AppColors.background,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: TextField(
            keyboardType: TextInputType.text,
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                border: InputBorder.none,
                hintText: text),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: AppColors.background,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: TextField(
            keyboardType: TextInputType.numberWithOptions(decimal: true),
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.attach_money_rounded),
                border: InputBorder.none,
                hintText: "1000"),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: AppColors.background,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: TextField(
            keyboardType: TextInputType.text,
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.message_rounded),
              border: InputBorder.none,
              hintText: "Purpose",
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Available Balance",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              Opacity(
                opacity: .7,
                child: Text(
                  "\$${currentUser.balance}",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SlideButton(text: "Request Now"),
        )
      ],
    );
  }
}
