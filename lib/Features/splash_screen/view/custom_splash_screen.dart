import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic/Core/components/widgets/islamic_text.dart';

class CustomSplashScreen extends StatelessWidget {
  const CustomSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: Image.asset('assets/images/background.png').image,
              fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            SizedBox(
              height: height * 0.04,
            ),
            Image.asset('assets/images/Mosque-01 1.png'),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Row(
                  children: [
                    Image.asset('assets/images/Shape-07 1.png'),
                  ],
                ),
                PositionedDirectional(
                  start: width * 0.25,
                  top: height * 0.15,
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/OBJECTS.png',
                      ),
                      const IslamicText(),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.22,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset('assets/images/Shape-04 1.png'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
