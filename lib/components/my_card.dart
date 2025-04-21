import 'package:flutter/material.dart';
import 'package:wallet_ui/components/circle_button.dart';
import 'package:wallet_ui/pages/request_page.dart';

import '../pages/topup_page.dart';
import '../utils/app_colors.dart';

class MyCard extends StatelessWidget {
  final Color? cardColor;
  final double accountBalance;
  const MyCard({super.key, this.cardColor, required this.accountBalance});

  @override
  Widget build(BuildContext context) {
    final mySize = MediaQuery.of(context).size;

    var formattedBalance = accountBalance.toStringAsFixed(2);

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          width: mySize.width,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: cardColor ?? AppColors.black, boxShadow: [BoxShadow()]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  "Your Balance",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: AppColors.white),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.attach_money_rounded,
                    size: 30,
                    color: AppColors.white,
                  ),
                  Text(
                    formattedBalance,
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: AppColors.white),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleButton(
                    iconLabel: "Top up",
                    icon: Icons.add,
                    iconColor: AppColors.white,
                    containerColor: AppColors.black,
                    ontap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TopupPage(),
                          ));
                    },
                  ),
                  CircleButton(
                    iconLabel: "Swap",
                    icon: Icons.compare_arrows_outlined,
                  ),
                  CircleButton(
                    iconLabel: "Send",
                    icon: Icons.call_made_outlined,
                  ),
                  CircleButton(
                    iconLabel: "Request",
                    icon: Icons.call_received_outlined,
                    ontap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RequestPage(),
                        )),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
