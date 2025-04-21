import 'package:flutter/material.dart';
import 'package:wallet_ui/utils/app_colors.dart';

class ChatRoom extends StatelessWidget {
  final String name;
  const ChatRoom({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: -6,
        elevation: 2,
        title: Row(
          children: [
            CircleAvatar(child: Icon(Icons.person)),
            SizedBox(
              width: 8,
            ),
            Text(
              name,
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_rounded))
        ],
      ),
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            child: Center(
              child: Text("data"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      border: Border.all(
                        width: 2,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: "Send a message"),
                    ),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.accentPurple,
                      ),
                      child: Icon(
                        Icons.send,
                        color: AppColors.white,
                      )),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
