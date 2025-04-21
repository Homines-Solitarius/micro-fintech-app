import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wallet_ui/components/slide_button.dart';
import 'package:wallet_ui/models/user_model.dart';

import '../components/my_transparent_button.dart';
import '../utils/app_colors.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final String userName = "_tibsol";
    final mySize = MediaQuery.of(context).size;

    return SafeArea(
      child: ListView(
        shrinkWrap: true,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: AppColors.accentPurple.withAlpha(40),
                      child: Icon(
                        Icons.person,
                        size: 38,
                      ),
                    ),
                    Row(children: [
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        child: Container(
                          color: AppColors.accentPurple.withValues(alpha: .1),
                          padding:
                              EdgeInsets.symmetric(vertical: 4, horizontal: 6),
                          child: Row(
                            children: [
                              Icon(
                                Icons.mode_standby_rounded,
                                color: AppColors.accentPurple,
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                "${currentUser.balance}",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.accentPurple
                                        .withValues(alpha: 1)),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        child: Container(
                            color:
                                AppColors.textSecondary.withValues(alpha: .1),
                            padding: EdgeInsets.all(8),
                            child: Icon(
                              Icons.currency_exchange,
                              size: 20,
                              color: AppColors.secondaryGreen,
                            )),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        child: Container(
                            color:
                                AppColors.textSecondary.withValues(alpha: .1),
                            padding: EdgeInsets.all(8),
                            child: Icon(
                              Icons.ios_share,
                              size: 20,
                            )),
                      )
                    ])
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          currentUser.name,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.verified,
                          color: AppColors.accentPurple,
                        )
                      ],
                    ),
                    Opacity(
                      opacity: .7,
                      child: Text(
                        "@$userName",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    // Bio
                    SizedBox(
                      width: mySize.width * .7,
                      child: Text(
                        "Buy and sell on Synca. Download the app now.",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    // Socials
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.interests_sharp),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Interests",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "274",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w800),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Likes",
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.interests_sharp),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Synca",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "1.1k",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w800),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Followers",
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    //
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: SlideButton(
                          text: "Settings",
                          textColor: AppColors.black,
                          buttonColor:
                              AppColors.textSecondary.withValues(alpha: .15),
                          ontap: () {},
                        )),
                        SizedBox(
                          width: 8,
                        ),
                        Expanded(
                          child: SlideButton(
                            text: "Add Money",
                            ontap: () {
                              showModalBottomSheet(
                                  showDragHandle: true,
                                  backgroundColor: AppColors.white,
                                  context: context,
                                  builder: (context) => Container(
                                        width: double.infinity,
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 20.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Center(
                                              child: Column(
                                                children: [
                                                  CircleAvatar(
                                                    radius: 30,
                                                    child: Icon(
                                                      Icons
                                                          .attach_money_rounded,
                                                      size: 50,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Text(
                                                    "Add Money",
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                ],
                                              ),
                                            ),

                                            SizedBox(
                                              height: 20,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 10.0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Icon(Icons
                                                          .account_balance_rounded),
                                                      SizedBox(
                                                        width: 10,
                                                      ),
                                                      Text(
                                                        "Via Bank Transfer",
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                    ],
                                                  ),
                                                  Icon(
                                                    Icons.keyboard_arrow_right,
                                                    size: 28,
                                                  )
                                                ],
                                              ),
                                            ),
                                            Divider(),
                                            //
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Synca Account Number",
                                                  style:
                                                      TextStyle(fontSize: 18),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Row(
                                                  children: [
                                                    Text(
                                                      currentUser.accountNumber,
                                                      style: TextStyle(
                                                        fontSize: 22,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    InkWell(
                                                      onTap: () {
                                                        Clipboard.setData(
                                                          ClipboardData(
                                                              text: currentUser
                                                                  .accountNumber),
                                                        );
                                                      },
                                                      child: Icon(
                                                        Icons
                                                            .content_copy_rounded,
                                                        size: 30,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                )
                                              ],
                                            ),
                                            Divider(),
                                            //

                                            SizedBox(
                                              height: 10,
                                            ),
                                            MyTransparentButton(
                                              color: AppColors.accentPink,
                                              text: "Close",
                                              ontap: () =>
                                                  Navigator.pop(context),
                                            ),
                                          ],
                                        ),
                                      ));
                            },
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    MyTransparentButton(
                      text: "Do Giveaway",
                      color: AppColors.secondaryGreen,
                      ontap: () {},
                    )
                  ],
                ),
              ),

              // Default tab
              SizedBox(height: 600, child: _buildBottom())
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildBottom() {
    return DefaultTabController(
        length: 2,
        child: Column(
          children: [
            TabBar(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                tabs: [
                  Tab(
                    text: "Badges",
                  ),
                  Tab(
                    text: "Transactions",
                  )
                ]),
            Expanded(
              child: TabBarView(children: [
                GridView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      child: Container(
                        width: 30,
                        height: 50,
                        color: AppColors.textSecondary.withValues(alpha: .2),
                      ),
                    );
                  },
                ),
                Text("tab 2"),
              ]),
            ),
          ],
        ));
  }
}
