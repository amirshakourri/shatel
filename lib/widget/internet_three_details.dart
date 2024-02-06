import 'package:flutter/material.dart';

class InternetDetailsThreeBox extends StatelessWidget {
  const InternetDetailsThreeBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
        child: Row(
          children: [
            //! traffic
            Expanded(
              child: Container(
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.all_inbox_outlined,
                      color: Color.fromARGB(255, 7, 65, 112),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'بسته ترافیک',
                      style: TextStyle(
                        fontFamily: 'SM',
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            //! Usages
            Expanded(
              child: Container(
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.cloud_sync_outlined,
                      color: Color.fromARGB(255, 7, 65, 112),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'گزارش مصرف',
                      style: TextStyle(
                        fontFamily: 'SM',
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),

            //! financial-report
            Expanded(
              child: Container(
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.feed_outlined,
                      color: Color.fromARGB(255, 7, 65, 112),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'گزارش مالی',
                      style: TextStyle(
                        fontFamily: 'SM',
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
