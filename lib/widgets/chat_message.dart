import 'package:flutter/material.dart';
import 'package:chatty/theme.dart';

class ChatMessage extends StatelessWidget {
  final String imageUrl;
  final String text;
  final String time;
  final bool checknotme;

  ChatMessage({this.imageUrl, this.text, this.time, this.checknotme});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30, left: 30, right: 30),
      child: checknotme ? Row(
        children: [
          Image.asset(
            imageUrl,
            height: 40,
            width: 40,
          ),
          SizedBox(
            width: 12,
          ),
          Container(
            width: 180,
            height: 72,
            decoration: BoxDecoration(
              color: lightGreyColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 11,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: subtittleTextStyle.copyWith(color: blackColor),
                  ),
                  Text(
                    time,
                    style: subtittleTextStyle,
                  )
                ],
              ),
            ),
          )
        ],
      ) : Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: 255,
            height: 100,
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
                bottomLeft: Radius.circular(40),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 11,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    text,
                    style: subtittleTextStyle.copyWith(color: blackColor),
                  ),
                  Text(
                    time,
                    style: subtittleTextStyle,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Image.asset(
            imageUrl,
            height: 40,
            width: 40,
          ),
        ],
      ),
    );
  }
}
