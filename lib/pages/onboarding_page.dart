import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:slidable_button/slidable_button.dart';
import 'package:wallet_ui/pages/login_page.dart';

import '../utils/app_colors.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    final mySize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.accentPurple,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: mySize.width,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: AppColors.white, width: 5)),
            child: Icon(
              Icons.attach_money_outlined,
              size: 90,
              color: AppColors.white,
            ),
          ),
          SizedBox(
            height: 60,
          ),
          BottomSheet(
            enableDrag: false,
            showDragHandle: true,
            dragHandleColor: AppColors.black,
            backgroundColor: AppColors.white,
            onClosing: () {},
            builder: (context) {
              return Container(
                padding: EdgeInsets.all(25),
                child: Column(
                  children: [
                    Column(
                      children: [
                        Text(
                          "Take control of your finance from your phone.",
                          style: TextStyle(
                              fontSize: 27,
                              fontWeight: FontWeight.w800,
                              color: AppColors.black),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                            "Convenience to control and manage your finances in one place to save your time",
                            style: TextStyle(
                              fontSize: 18,
                              color: AppColors.black,
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    HorizontalSlidableButton(
                      height: 50.0,
                      buttonWidth: mySize.width / 2.4,
                      buttonColor: AppColors.accentPurple,
                      width: mySize.width,
                      color: AppColors.black,
                      onChanged: (position) {
                        setState(() {
                          if (position == SlidableButtonPosition.end) {
                            Navigator.pop(context);
                            //
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LoginPage(),
                                ));
                          }
                        });
                      },
                      label: Text(
                        "Get Started",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: AppColors.white),
                      ),
                      child: Row(
                        children: [
                          Spacer(),
                          Row(
                            children: [
                              Opacity(
                                opacity: .5,
                                child: Icon(
                                  Icons.keyboard_arrow_right_rounded,
                                  size: 24,
                                  color: AppColors.white,
                                ),
                              ),
                              Opacity(
                                opacity: .8,
                                child: Icon(
                                  Icons.keyboard_arrow_right_rounded,
                                  size: 24,
                                  color: AppColors.white,
                                ),
                              ),
                              Icon(
                                Icons.keyboard_arrow_right_rounded,
                                size: 24,
                                color: AppColors.white,
                              ),
                            ],
                          )
                              .animate(
                                delay: 3000
                                    .ms, // this delay only happens once at the very start
                                onPlay: (controller) =>
                                    controller.repeat(), // loop
                              )
                              .fadeOut(delay: 700.ms)
                              .slideX(duration: 1000.ms, delay: 500.ms)
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
