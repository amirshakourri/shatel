import 'package:flutter/material.dart';

class InternetPackages extends StatefulWidget {
  const InternetPackages({super.key});

  @override
  State<InternetPackages> createState() => _InternetPackagesState();
}

class _InternetPackagesState extends State<InternetPackages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text(
          'خرید ترافیک',
          style: TextStyle(
            fontSize: 16,
            fontFamily: "SM",
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        elevation: 0,
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SizedBox(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  const Text(
                    'پیشنهاد های ویژه',
                    style: TextStyle(color: Colors.grey, fontFamily: 'SM'),
                  ),
                  const SizedBox(height: 5),
                  showSpecialInternetPackges(
                    'item2',
                    '250 گیگابایت ترافیک 30 روزه',
                    '2,625,000',
                    '8,750,000',
                  ),
                  const SizedBox(height: 6),
                  showSpecialInternetPackges(
                    'item2',
                    '250 گیگابایت ترافیک 30 روزه',
                    '2,625,000',
                    '8,750,000',
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'پیشنهاد های برنزی ترافیک اضافه',
                    style: TextStyle(color: Colors.grey, fontFamily: 'SM'),
                  ),
                  const SizedBox(height: 6),
                  showSpecialInternetPackges(
                    'item2',
                    '250 گیگابایت ترافیک 30 روزه',
                    '2,625,000',
                    '8,750,000',
                  ),
                  const SizedBox(height: 6),
                  showSpecialInternetPackges(
                    'item2',
                    '250 گیگابایت ترافیک 30 روزه',
                    '2,625,000',
                    '8,750,000',
                  ),
                  const SizedBox(height: 6),
                  showSpecialInternetPackges(
                    'item2',
                    '250 گیگابایت ترافیک 30 روزه',
                    '2,625,000',
                    '8,750,000',
                  ),
                  const SizedBox(height: 6),
                  showSpecialInternetPackges(
                    'item2',
                    '250 گیگابایت ترافیک 30 روزه',
                    '2,625,000',
                    '8,750,000',
                  ),

                  const SizedBox(height: 20),
                  const Text(
                    'ّبسته های نقره ای ترافیک اضافه',
                    style: TextStyle(color: Colors.grey, fontFamily: 'SM'),
                  ),
                  const SizedBox(height: 10),
                  //! 1
                  Row(
                    children: [
                      Expanded(
                        child: showBronzeTraffic(
                          'item2',
                          '1 گیگ',
                          '40,000',
                        ),
                      ),
                      const SizedBox(width: 6),
                      Expanded(
                        child: showBronzeTraffic(
                          'item2',
                          '1 گیگ',
                          '40,000',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      Expanded(
                        child: showBronzeTraffic(
                          'item2',
                          '1 گیگ',
                          '40,000',
                        ),
                      ),
                      const SizedBox(width: 6),
                      Expanded(
                        child: showBronzeTraffic(
                          'item2',
                          '1 گیگ',
                          '40,000',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      Expanded(
                        child: showBronzeTraffic(
                          'item2',
                          '1 گیگ',
                          '40,000',
                        ),
                      ),
                      const SizedBox(width: 6),
                      Expanded(
                        child: showBronzeTraffic(
                          'item2',
                          '1 گیگ',
                          '40,000',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      Expanded(
                        child: showBronzeTraffic(
                          'item2',
                          '1 گیگ',
                          '40,000',
                        ),
                      ),
                      const SizedBox(width: 6),
                      Expanded(
                        child: showBronzeTraffic(
                          'item2',
                          '1 گیگ',
                          '40,000',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget showSpecialInternetPackges(
    String imageName,
    String title,
    String discount,
    String realPrice,
  ) {
    return Container(
      width: 400,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
        child: Row(
          children: [
            Image.asset(
              'assets/images/$imageName.jpg',
              width: 50,
              height: 50,
            ),
            const SizedBox(width: 10),
            Text(
              title,
              style: const TextStyle(fontFamily: 'SM', fontSize: 14),
            ),
            const Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  discount,
                  style: const TextStyle(
                    color: Colors.deepOrange,
                    fontFamily: 'SM',
                  ),
                ),
                Text(
                  realPrice,
                  style: const TextStyle(
                    decoration: TextDecoration.lineThrough,
                    fontFamily: 'SM',
                  ),
                ),
                const Text(
                  'ریال',
                  style: TextStyle(
                    color: Colors.grey,
                    fontFamily: 'SM',
                    fontSize: 12,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget showBronzeTraffic(String imageName, String title, String price) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      height: 80,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          children: [
            Image.asset(
              'assets/images/$imageName.jpg',
              width: 50,
              height: 50,
            ),
            //const Spacer(),
            const SizedBox(width: 16),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontFamily: 'SB'),
                ),
                Row(
                  children: [
                    Text(
                      price,
                      style:
                          const TextStyle(fontFamily: 'SM', color: Colors.grey),
                    ),
                    const SizedBox(width: 5),
                    const Text(
                      'ریال',
                      style: TextStyle(color: Colors.grey, fontFamily: 'SM'),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
