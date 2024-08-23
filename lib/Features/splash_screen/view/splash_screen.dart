import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:islamic/Features/bottom_navigate_bar_home_view/view/home_view.dart';
import 'package:islamic/Features/splash_screen/view/custom_splash_screen.dart';
import 'package:islamic/test.dart';
import 'package:page_transition/page_transition.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      //backgroundColor: const Color(0xff067F7A),
      splashIconSize: double.infinity,
      splash:const CustomSplashScreen(),
      nextScreen:const HomeView(),
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.fade,
    );;
  }
}
