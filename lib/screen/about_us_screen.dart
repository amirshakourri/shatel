import 'package:flutter/material.dart';

class AboutUsScreen extends StatefulWidget {
  const AboutUsScreen({super.key});

  @override
  State<AboutUsScreen> createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'تماس با ما',
          style: TextStyle(
            fontFamily: "SM",
            fontSize: 16,
          ),
        ),
        centerTitle: true,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 120,
            ),
            //! Shatel Logo
            Image.asset(
              'assets/images/Shatel_Logo.png',
              width: 100,
              height: 100,
            ),
            const SizedBox(height: 60),

            _button('درباره شاتل'),
            const SizedBox(height: 15),

            _button('تماس با مشتریان'),
            const SizedBox(height: 15),

            _button('ارسال تیکت به پشتیبانی'),
            const SizedBox(height: 40),

            //! sotial media icons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _sotilaMediaIcons('Telegram'),
                const SizedBox(width: 15),
                _sotilaMediaIcons('Twitter'),
                const SizedBox(width: 15),
                _sotilaMediaIcons('Instagram'),
              ],
            ),

            const Padding(
              padding: EdgeInsets.only(top: 80.0),
              child: Text(
                '5.3.3',
                style: TextStyle(
                  fontFamily: "SM",
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _sotilaMediaIcons(
    String name, {
    double imageWidth = 20,
    double imagesHeight = 20,
  }) {
    return SizedBox(
      width: imageWidth,
      height: imagesHeight,
      child: Image.asset(
        'assets/images/$name.png',
        color: Colors.black,
      ),
    );
  }

  Widget _button(String buttonText) {
    return SizedBox(
      width: 320,
      height: 46,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          shape: const ContinuousRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          side: BorderSide(width: 1, color: Colors.grey.shade300),
        ),
        child: Text(
          buttonText,
          style: TextStyle(
            color: Colors.grey.shade700,
            fontFamily: 'SM',
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
