import 'package:flutter/material.dart';
import 'package:shatel/constants/colors.dart';

class ShatelClub extends StatefulWidget {
  const ShatelClub({super.key});

  @override
  State<ShatelClub> createState() => _ShatelClubState();
}

class _ShatelClubState extends State<ShatelClub> {
  List<String> imageName = [
    'shatel1',
    'shatel2',
    'shatel3',
    'shatel4',
    'shatel5',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'باشگاه مشتریان',
          style: TextStyle(fontSize: 16, fontFamily: "SM"),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            children: [
              //! Shatel user club points
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                child: Container(
                  width: double.infinity,
                  height: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 8,
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/coinIcon.jpg',
                              width: 60,
                            ),
                            const SizedBox(width: 2),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    const Text(
                                      '43,710',
                                      style: TextStyle(
                                          fontFamily: 'SM', fontSize: 16),
                                    ),
                                    const SizedBox(width: 4),
                                    Text(
                                      'امتیاز',
                                      style: TextStyle(
                                          fontFamily: 'SM',
                                          fontSize: 14,
                                          color: Colors.grey[700]),
                                    ),
                                  ],
                                ),
                                Text(
                                  'premium',
                                  style: TextStyle(color: Colors.grey[700]),
                                ),
                              ],
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.info_outline,
                                color: Color.fromARGB(255, 7, 65, 112),
                              ),
                            ),
                            const SizedBox(width: 10),
                          ],
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: const Color.fromARGB(255, 7, 65, 112),
                                ),
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                    foregroundColor: Colors.white,
                                  ),
                                  onPressed: () {},
                                  child: const Text(
                                    'کد های تخفیف',
                                    style: TextStyle(fontFamily: 'SM'),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Container(
                                height: 40,
                                decoration: BoxDecoration(
                                  //! waanna see good locking your button ? set container
                                  //! border radius with ElevatedButton or other button
                                  //! here i set two them BorderRadius.circular(4)
                                  borderRadius: BorderRadius.circular(4),
                                  border: Border.all(
                                    width: 1.0,
                                    color: Colors.black,
                                  ),
                                ),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    //* i dont know what is do, but if you remove that you see diffrence
                                    //* between before and after Yep!! (surfaceTintColor: Colors.white)
                                    surfaceTintColor: Colors.white,
                                    backgroundColor: Colors.white,
                                    foregroundColor:
                                        const Color.fromARGB(255, 7, 65, 112),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: const Text(
                                    'تاریخجه امتیاز ها',
                                    style: TextStyle(fontFamily: 'SM'),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              //! hot offers
              _showHorizontalBannerTitle('پیشنهاد های ویژه'),
              _showHorizontalBanner(0xFF074170),
              const SizedBox(height: 15),
              _showHorizontalBannerTitle('خدمات شاتل'),
              _showHorizontalBanner(0xFFFF7E22),
            ],
          ),
        ),
      ),
    );
  }

  Padding _showHorizontalBannerTitle(String titleText) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
      ),
      child: Row(
        children: [
          Text(
            //! title text
            titleText,
            style: TextStyle(
              fontFamily: 'SM',
              color: Colors.grey.shade900,
              fontSize: 14,
            ),
          ),
          const Spacer(),
          const Text(
            'مشاهده همه',
            style: TextStyle(
              fontFamily: 'SM',
              color: Color.fromARGB(255, 7, 65, 112),
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }

  Padding _showHorizontalBanner(int color) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 4),
      child: SizedBox(
        height: 215,
        child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Card(
              surfaceTintColor: CustomColor.whiteColor,
              color: CustomColor.whiteColor,
              shadowColor: CustomColor.whiteColor,
              elevation: 0,
              shape: ContinuousRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: SizedBox(
                width: 300,
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(4),
                        topRight: Radius.circular(4),
                      ),
                      child: Image.asset(
                        'assets/images/${imageName[index]}.jpg',
                        fit: BoxFit.cover,
                        //height: 140,
                      ),
                    ),
                    //const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 12.0,
                        left: 12,
                        top: 8,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'تخفیف 25 درصدی دلیچی',
                            style: TextStyle(
                              fontFamily: 'SM',
                              color: Colors.black,
                              fontSize: 14,
                            ),
                          ),
                          const Spacer(),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(color),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 2,
                              ),
                              child: Text(
                                'رایگان',
                                style: TextStyle(
                                  fontFamily: 'SM',
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
