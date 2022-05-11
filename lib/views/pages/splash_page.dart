import 'package:flutter/material.dart';
import 'package:rjc_codelab_3/views/pages/landing_page.dart';

import '../../constant/constant.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => const LandingPage(),
        ),
      );
    });

    return Stack(
      children: [
        Container(color: AppColor.mainThemeColor),
        const Align(
          alignment: Alignment.center,
          child: Icon(
            AppIcon.mainIcon,
            color: Colors.white,
            size: 80,
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: LinearProgressIndicator(
            color: Colors.white.withOpacity(0.4),
          ),
        ),
      ],
    );
  }
}
