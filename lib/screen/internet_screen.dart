import 'package:flutter/material.dart';
import 'package:shatel/constants/colors.dart';
import 'package:shatel/screen/menu.dart';
import 'package:shatel/widget/user_internet_usages.dart';
import 'package:shatel/widget/banner.dart';
import 'package:shatel/widget/internet_three_details.dart';
import 'package:shatel/widget/namava_image_banner.dart';
import 'package:shatel/widget/special_horizontal_offer.dart';

import 'user_account.dart';

class InternetScreen extends StatefulWidget {
  const InternetScreen({super.key});

  @override
  State<InternetScreen> createState() => _InternetScreenState();
}

class _InternetScreenState extends State<InternetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.backgroundColor,
      appBar: AppBar(
        leading: GestureDetector(
          child: const Icon(Icons.account_circle_outlined),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const UserAccount(),
              ),
            );
          },
        ),
        title: const Text(
          '37242942',
          style: TextStyle(
            fontSize: 18,
            fontFamily: "SB",
          ),
        ),
        centerTitle: true,
        backgroundColor: CustomColor.whiteColor,
        surfaceTintColor: CustomColor.whiteColor,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SidebarMenu(),
                  ),
                );
              },
              child: Image.asset(
                'assets/images/menu.png',
                width: 25,
                height: 25,
                color: CustomColor.iconGreyColor,
              ),
            ),
          ),
        ],
      ),
      body: const CustomScrollView(
        slivers: [
          //! banner
          SliverToBoxAdapter(
            child: InternetScreenBanner(),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                // User ineternet usages
                //! This widget definde a Container with 310 height
                //! inside of container we have A row for user time remaining and some little details
                //! under the row we have two circle, it show us all data about subscription (time remaining & amount of)
                //! and the end we have to button one for extra internet and one for repurchase
                UserInternetUsages(),

                // Special internet offers
                //* this little horizontal ListView give us economical internet offers
                //* probebly change each 24h or per week
                SpecialInternetOffers(),

                // Namava Images banner
                //? return a ClipRRect with images and litte radius: 8
                NamavaImageBanner(),

                //! info about user Usage / financial-report / traffic
                InternetDetailsThreeBox(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
