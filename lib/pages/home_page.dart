import 'package:flutter/material.dart';
import 'package:wallet_ui/components/my_button.dart';
import 'package:wallet_ui/components/my_card.dart';
import 'package:wallet_ui/components/slide_button.dart';
import 'package:wallet_ui/utils/app_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'package:wallet_ui/models/user_model.dart';

import '../components/my_transparent_button.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    final mySize = MediaQuery.of(context).size;
    return SafeArea(
      child: Column(children: [
        SizedBox(
          height: 20,
        ),
        _appBar(),
        // Cardview and smooth page indicator
        Column(
          children: [
            SizedBox(
              height: mySize.height * .29,
              child: _cardView(),
            ),
            // Smooth page indicator
            SmoothPageIndicator(
              controller: _pageController,
              count: 3,
              effect: ExpandingDotsEffect(
                  activeDotColor: AppColors.black, dotHeight: 10, dotWidth: 10),
            )
          ],
        ),
        SizedBox(
          height: 8.0,
        ),
        _transactionsHistory(),
        SizedBox(
          height: 20,
        ),
        SizedBox(
            height: mySize.height * .05,
            child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 10),
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                children: [
                  SlideButton(
                    text: "Pending Request",
                    ontap: () {
                      showModalBottomSheet(
                        backgroundColor: AppColors.white,
                        useSafeArea: true,
                        showDragHandle: true,
                        context: context,
                        builder: (context) => SizedBox(
                          height: 350,
                          width: double.infinity,
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  child: Icon(
                                    Icons.ac_unit_rounded,
                                    size: 50,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Pending Request",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10.0),
                                  child: Text(
                                    "You have a peace, love and harmony request for 70th Convocation Ceremony.",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                MyButton(
                                  buttonText: "Accept",
                                  buttonColor: AppColors.accentPurple,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                MyTransparentButton(
                                    color: AppColors.accentPink,
                                    text: "Decline",
                                    ontap: () {
                                      Navigator.pop(context);
                                    }),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SlideButton(
                    text: "Giveaway",
                    buttonColor: AppColors.accentPink,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SlideButton(
                    text: "Donate",
                  ),
                ]))
      ]),
    );
  }

// APPBAR
  Widget _appBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: AppColors.accentPurple.withValues(alpha: .6),
            child: Icon(
              Icons.person,
              size: 30,
              color: AppColors.white,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Opacity(opacity: .7, child: Text("Good Morning,")),
                  Text(
                    currentUser.name,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_outlined,
                size: 28,
              ))
        ],
      ),
    );
  }

// CARD VIEW
  Widget _cardView() {
    return PageView(
      controller: _pageController,
      pageSnapping: true,
      children: [
        MyCard(
          accountBalance: currentUser.balance,
          cardColor: AppColors.accentPurple,
        ),
        MyCard(
          accountBalance: 1500,
          cardColor: AppColors.accentblue,
        ),
        MyCard(accountBalance: 500),
      ],
    );
  }

  Widget _transactionsHistory() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Transactions",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              GestureDetector(
                child: Opacity(
                  opacity: .7,
                  child: Row(
                    children: [
                      Text(
                        "See all",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      Icon(Icons.keyboard_arrow_right_rounded)
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: Text("No transactions found"),
          )
        ],
      ),
    );
  }
}
