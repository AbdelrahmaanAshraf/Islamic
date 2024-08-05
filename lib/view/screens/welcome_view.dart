import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic/model/helper/const.dart';
import 'package:islamic/view/widget/WelcomeWidgets/first_welcome_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final controller = PageController();
  int currentPage = 0;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  //late final Color? color;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 16.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: PageView(
                controller: controller,
                onPageChanged: getCurrentIndex(),
                children: const [
                  WelcomeWidget(
                    image: 'assets/images/kabba 1.png',
                    firstText: 'Welcome To Islamic',
                    secondText: 'We Are Very Excited To Have You In',
                    lastText: 'Our Community',
                  ),
                  WelcomeWidget(
                    image: 'assets/images/welcome 1.png',
                    firstText: 'Reading the Quran',
                    secondText: 'Read, and your Lord is the Most',
                    lastText: 'Generous',
                  ),
                  WelcomeWidget(
                    image: 'assets/images/bearish 1.png',
                    firstText: 'Bearish',
                    secondText: 'Praise the name of your Lord, the ',
                    lastText: 'Most High',
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                currentPage == controller.initialPage
                    ? SizedBox(width: 50.w,)
                    : TextButton(
                        onPressed: () {
                          setState(() {
                            getCurrentIndex();
                            controller.previousPage(
                              duration: const Duration(milliseconds: 5),
                              curve: Curves.easeInOut,
                            );
                          });
                        },
                        child: Text(
                          'Back',
                          style: customTextStyle(color: kPrimaryColor),
                        ),
                      ),
                SmoothPageIndicator(
                  controller: controller, // PageController
                  count: 3,
                  effect: const ExpandingDotsEffect(
                    activeDotColor: kPrimaryColor,
                  ), // your preferred effect
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      controller.nextPage(
                        duration: const Duration(milliseconds: 5),
                        curve: Curves.easeInOut,
                      );
                    });
                  },
                  child: Text(
                    'Next',
                    style: customTextStyle(color: kPrimaryColor),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
  getCurrentIndex(){
    setState(() {
      controller.addListener(() {
        currentPage = controller.page!.round();
      },);
    });
    //currentPage = controller.page!.round();
  }
}