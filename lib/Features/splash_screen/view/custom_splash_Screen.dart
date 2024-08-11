import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic/Core/components/widgets/islamic_text.dart';

class CustomSplashScreen extends StatelessWidget {
  const CustomSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: Image.asset('assets/images/background.png').image,
              fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 35.h,
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
                Positioned(
                  left: 100.w,
                  top: 100.h,
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/OBJECTS.png',
                      ),
                      const IslamicText()
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 160.h,),
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
// Stack(
// children:[
// Container(
// width: double.infinity,
// decoration: BoxDecoration(
// image: DecorationImage(
// image: Image.asset('assets/images/background.png').image,
// fit: BoxFit.cover),
// ),
// ),
// Positioned(
// left:55.w,
// child: Column(
// children: [
// SizedBox(
// height: 35.h,
// ),
// Image.asset('assets/images/Mosque-01 1.png'),
// ],
// ),
// ),
// SizedBox(
// height: 10.h,
// ),
// Positioned(
// top: 160.h,
// child: Row(
// children: [
// Image.asset('assets/images/Shape-07 1.png'),
// ],
// ),
// ),
// Positioned(
// left: 100.w,
// top: 250.h,
// child: Center(
// child: Column(
// children: [
// Image.asset(
// 'assets/images/OBJECTS.png',
// ),
// Text(
// 'Islami',
// style: TextStyle(
// fontSize: 80.sp, color: kPrimaryColor, fontFamily: 'Kamali'),
// ),
// ],
// ),
// ),
// ),
// Positioned(
// top: 450.h,
// left: 270.w,
// child: Row(
// mainAxisAlignment: MainAxisAlignment.end,
// children: [
// Image.asset('assets/images/Shape-04 1.png')
// ],
// ),
// )
// ]
// ),
