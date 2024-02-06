import 'package:flutter/material.dart';

class SpecialInternetOffers extends StatelessWidget {
  const SpecialInternetOffers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12, top: 4, bottom: 6),
      child: SizedBox(
        height: 70,
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                width: 270,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
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
                      const SizedBox(width: 12),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '250 گیگایابت ترافیک 30 روزه',
                            style: TextStyle(
                                fontFamily: "SM", color: Colors.grey.shade800),
                          ),
                          const SizedBox(height: 4),
                          const Text(
                            '2,625,000 ریال',
                            style: TextStyle(
                              fontFamily: "SM",
                              color: Colors.deepOrange,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 6),
              Container(
                width: 270,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
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
                      const SizedBox(width: 12),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '250 گیگایابت ترافیک 30 روزه',
                            style: TextStyle(
                                fontFamily: "SM", color: Colors.grey.shade800),
                          ),
                          const SizedBox(height: 4),
                          const Text(
                            '2,625,000 ریال',
                            style: TextStyle(
                              fontFamily: "SM",
                              color: Colors.deepOrange,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 10),
            ],
          ),
        ),
      ),
    );
  }
}
