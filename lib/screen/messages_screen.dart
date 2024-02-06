import 'package:flutter/material.dart';
import 'package:shatel/constants/colors.dart';
import 'package:shatel/widget/messages.dart';

class MessagesScreen extends StatefulWidget {
  const MessagesScreen({super.key});

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      backgroundColor: CustomColor.backgroundColor,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 6,
              height: 6,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Colors.red,
              ),
            ),
            const SizedBox(width: 4),
            const Text(
              'پیام ها',
              style: TextStyle(fontFamily: "SM", fontSize: 16),
            ),
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: const [
          SizedBox(height: 8),
          UserMessagesBox('پیشنهاد های ویژه شاتل برای روز های پایانی دی ماه'),
          UserMessagesBox(
              'جشنواره خرید مودم اینترنت پرسرعت ثابت شاتل؛ ویژه کاربران فعلی'),
          UserMessagesBox(
              'فقط با 1000 تومان برنده 13 تا آیفون و پلی استیشن شو!!'),
        ],
      ),
    );
  }
}
