import 'package:chatty/theme.dart';
import 'package:chatty/widgets/chat_message.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE9E9E9),
      floatingActionButton: Container(
        padding: EdgeInsets.all(16),
        width: 315,
        height: 54,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(75),
        ),
        child: FloatingActionButton(
          onPressed: () {},
          elevation: 0,
          backgroundColor: whiteColor,
          child: Row(
            children: [
              Text(
                'Type message ...',
                style: subtittleTextStyle,
              ),
              Spacer(),
              Icon(
                Icons.send,
                color: blackColor,
              )
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 115,
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(40),
                ),
              ),
              child: Row(
                children: [
                  Image.asset('assets/images/group2.png'),
                  SizedBox(
                    width: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'WKW',
                        style: tittleTextStyle,
                      ),
                      Text(
                        '14,209 members',
                        style: subtittleTextStyle,
                      )
                    ],
                  ),
                  Spacer(),
                  Image.asset('assets/images/call_btn.png'),
                ],
              ),
            ),
            ChatMessage(
              imageUrl: 'assets/images/friend1.png',
              text: 'How are ya guys?',
              time: '2:30',
              checknotme: true,
            ),
            ChatMessage(
              imageUrl: 'assets/images/friend3.png',
              text: 'Find here :P',
              time: '3:11',
              checknotme: true,
            ),
            ChatMessage(
              imageUrl: 'assets/images/profile_huda.png',
              text: 'Thinking about how to deal\nwith this client from hell...',
              time: '22:08',
              checknotme: false,
            ),
            ChatMessage(
              imageUrl: 'assets/images/friend2.png',
              text: 'Love them',
              time: '23:11',
              checknotme: true,
            ),
          ],
        ),
      ),
    );
  }
}
