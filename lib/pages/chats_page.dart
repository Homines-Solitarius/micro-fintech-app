import 'package:flutter/material.dart';
import 'package:wallet_ui/pages/chat_room.dart';
import 'package:wallet_ui/utils/app_colors.dart';

import '../components/custom_app_bar.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Appbar
        CustomAppBar(
          title: "Chats",
          actionIcon: Icons.more_vert_rounded,
        ),
        SizedBox(
          height: 20,
        ),
        _searchBar(),
        SizedBox(
          height: 20,
        ),
        Expanded(
          child: ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 10),
            shrinkWrap: true,
            itemCount: 20,
            itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ChatRoom(
                          name: "John Osayemi",
                        ),
                      ));
                },
                child: _profileTile(index)),
          ),
        )
      ],
    );
  }

  Widget _searchBar() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          color: AppColors.background.withValues(alpha: .2),
          border: Border.all(
              width: 2,
              color: AppColors.accentPurple,
              style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(40)),
      child: SearchBar(
        backgroundColor: WidgetStatePropertyAll(Colors.transparent),
        elevation: WidgetStatePropertyAll(0),
        leading: Icon(
          Icons.search,
          color: AppColors.accentPurple,
        ),
        hintText: "Add a friend or Search",
      ),
    );
  }

  Widget _profileTile(int index) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Container(
        padding: EdgeInsets.all(8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: AppColors.accentPurple.withValues(alpha: .5),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "John Osayemi",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Payment being processed, we'll split next time",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ],
                ),
              ),
            ),
            Badge(
              backgroundColor: AppColors.accentPurple,
              textStyle: TextStyle(fontSize: 14),
              label: Padding(
                padding: const EdgeInsets.all(4),
                child: Text(index.toString()),
              ),
            )
          ],
        ),
      ),
    );
  }
}
