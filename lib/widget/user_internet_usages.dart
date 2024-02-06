import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:shatel/constants/colors.dart';
import 'package:shatel/screen/internet_packages.dart';

class UserInternetUsages extends StatelessWidget {
  const UserInternetUsages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: Container(
        width: double.infinity,
        height: 320,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        child: Column(
          children: [
            //! internet package details
            Directionality(
              textDirection: TextDirection.rtl,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: Image.asset(
                        'assets/images/item2.jpg',
                        width: 45,
                        height: 40,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Column(
                        children: [
                          Text(
                            'مدت',
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: "SM",
                                fontSize: 14),
                          ),
                          Text(
                            '30 روز',
                            style: TextStyle(fontFamily: "SM", fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 30.0),
                      child: Column(
                        children: [
                          Text(
                            'وضعیت اشتراک',
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: "SM",
                                fontSize: 14),
                          ),
                          Text(
                            'در حال استفاده',
                            style: TextStyle(fontFamily: "SM", fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 30.0),
                      child: Column(
                        children: [
                          Text(
                            'کد اشتراک',
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: "SM",
                                fontSize: 14),
                          ),
                          Text(
                            '3686026',
                            style: TextStyle(fontFamily: "SM", fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //! Two circle progress bar
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularPercentIndicator(
                      radius: 70,
                      lineWidth: 8,
                      percent: 0.3,
                      animation: true,
                      animationDuration: 1000,
                      progressColor: const Color.fromARGB(255, 240, 204, 0),
                      backgroundColor: Colors.grey.shade300,
                      circularStrokeCap: CircularStrokeCap.round,
                      center: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'روز 8',
                            style: TextStyle(fontFamily: 'SB'),
                          ),
                          Text(
                            'از 30 روز',
                            style: TextStyle(
                              fontFamily: 'SB',
                              color: Colors.grey.shade400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 20),
                    CircularPercentIndicator(
                      animation: true,
                      animationDuration: 1200,
                      radius: 70,
                      lineWidth: 8,
                      percent: 0.7,
                      backgroundColor: Colors.grey.shade300,
                      circularStrokeCap: CircularStrokeCap.round,
                      center: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            '13.92 گیگ',
                            style: TextStyle(fontFamily: 'SM'),
                          ),
                          Text(
                            'از 205.00 گیگ',
                            style: TextStyle(
                              fontFamily: 'SM',
                              color: Colors.grey.shade400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            //! Two Button buy & repurchase
            Directionality(
              textDirection: TextDirection.rtl,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 12,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 50,
                        child: TextButton(
                          onPressed: () {
                            //! Buy net
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const InternetPackages(),
                              ),
                            );
                          },
                          style: TextButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 7, 65, 112),
                            shape: const ContinuousRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                          ),
                          child: const SizedBox(
                            child: Text(
                              'خرید ترافیک',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'SM',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 50,
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            shape: ContinuousRectangleBorder(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(10),
                              ),
                              side: BorderSide(
                                width: 1,
                                color: CustomColor.buttonBlueColor,
                              ),
                            ),
                          ),
                          child: SizedBox(
                            child: Text(
                              'تمدید سرویس',
                              style: TextStyle(
                                color: CustomColor.buttonBlueColor,
                                fontFamily: 'SM',
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
