import 'package:chatty/pages/chat_page.dart';
import 'package:flutter/material.dart';
import 'package:chatty/theme.dart';

class ChatTile extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String text;
  final String time;
  final bool unread;

  ChatTile({this.imageUrl, this.name, this.text, this.time, this.unread});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(top: 16),
        child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ChatPage()
              )
            );
          },
          child: Row(
            children: [
              Image.asset(
                imageUrl,
                height: 55,
                width: 55,
              ),
              SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: tittleTextStyle,
                  ),
                  Text(
                    text,
                    style: unread
                        ? subtittleTextStyle.copyWith(color: blackColor)
                        : subtittleTextStyle,
                  ),
                ],
              ),
              Spacer(),
              Text(
                time,
                style: unread
                    ? subtittleTextStyle.copyWith(color: blackColor)
                    : subtittleTextStyle,
              )
            ],
          ),
        ),
      ),
    );
  }
}
