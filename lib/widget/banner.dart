import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class InternetScreenBanner extends StatelessWidget {
  const InternetScreenBanner({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = PageController(viewportFraction: 1);
    List<String> imagesPath = [
      'shatel1.jpg',
      'shatel2.jpg',
      'shatel3.jpg',
      'shatel4.jpg',
      'shatel5.jpg',
    ];
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          child: SizedBox(
            height: 200,
            child: PageView.builder(
              controller: controller,
              itemCount: imagesPath.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      'assets/images/${imagesPath[index]}',
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        Positioned(
          bottom: 14,
          child: SmoothPageIndicator(
            controller: controller, // PageController
            count: 5,
            effect: SlideEffect(
              spacing: 4,
              dotHeight: 10,
              dotWidth: 10,
              activeDotColor: const Color.fromARGB(255, 7, 65, 112),
              dotColor: Colors.grey.shade400,
            ), // your preferred effect
          ),
        ),
      ],
    );
  }
}
