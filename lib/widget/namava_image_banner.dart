import 'package:flutter/material.dart';

class NamavaImageBanner extends StatelessWidget {
  const NamavaImageBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.asset(
          'assets/images/namava_banner.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
