import 'package:flutter/material.dart';
import 'package:wallet_ui/components/custom_app_bar.dart';
import 'package:wallet_ui/models/user_model.dart';

import '../utils/app_colors.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomAppBar(
                title: "Wallet",
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.textSecondary.withValues(alpha: .2)),
                  child: Icon(
                    Icons.add,
                    size: 25,
                  ))
            ],
          ),
        ),
        // CARDS
        SizedBox(
          child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.all(20),
              children: [
                _customCard(),
              ]),
        ),
        // Floating action button to add new card
      ],
    );
  }

  Widget _customCard() {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(20),
          color: AppColors.accentPurple.withValues(alpha: .8)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.attach_money_rounded,
                size: 30,
                color: AppColors.white,
              ),
              Text(
                currentUser.balance.toStringAsFixed(2),
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: AppColors.white),
              ),
            ],
          ),
          Text(currentUser.accountNumber,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))
        ],
      ),
    );
  }
}
