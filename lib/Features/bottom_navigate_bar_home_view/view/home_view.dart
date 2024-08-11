import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:islamic/Core/components/helper/const.dart';
import 'package:islamic/Features/hadith_screen/view/screen/hadith_view.dart';
import 'package:islamic/Features/quran_screen/view/screen/quran_view.dart';
import 'package:islamic/Features/sebha_screen/view/screen/sebha_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  static String id = 'HomeView';

  @override
  State<HomeView> createState() => _HomeViewState();
}

List<Widget> screens = const [
  QuranView(),
  HadithView(),
  SebhaView(),
  HadithView(),
];
int currentScreenIndex = 0;
Color? currentColor;

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        unselectedLabelStyle: TextStyle(fontSize: 0.sp),
        currentIndex: currentScreenIndex,
        onTap: (index) {
          setState(
            () {
              currentScreenIndex = index;
              if (index == 2) {
                currentColor = Colors.white;
              } else {
                currentColor = Colors.black;
              }
            },
          );
        },
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        backgroundColor: kPrimaryColor,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.bookQuran),
            label: 'Quran',
          ),
          const BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.bookOpen),
            label: 'Hadith',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/necklace-islam-svgrepo-com 1.png',
              color: currentColor,
            ),
            label: 'Sebha',
          ),
          const BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.clock),
            label: 'Pray Time',
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(1.sp),
        child: screens[currentScreenIndex],
      ),
    );
  }
}
