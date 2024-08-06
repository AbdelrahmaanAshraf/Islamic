import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:islamic/model/helper/const.dart';
import 'package:islamic/view/widget/islamic_mosque_widget.dart';
import 'package:islamic/view/widget/quran_widgets/MostRecently/most_recently_widget.dart';
import 'package:islamic/view/widget/quran_widgets/SuraWidgets/search_sura_widget.dart';
import 'package:islamic/view/widget/quran_widgets/SuraWidgets/sura_widget_list_view.dart';
import 'package:islamic/view_model/cubit/Quran/quran_cubit.dart';
import 'package:islamic/view_model/cubit/Quran/quran_stats.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  static String id = 'HomeView';

  @override
  State<HomeView> createState() => _HomeViewState();
}

int currentScreenIndex = 0;
Color? currentColor;

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    var cubit = QuranCubit.get(context);
    return BlocConsumer<QuranCubit, QuranStats>(
      listener: (context, state) {},
      builder: (context, state) {
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
            items: [
              const BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.bookQuran),
                label: 'Quran',
              ),
              const BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.bookOpen),
                label: 'Hadeth',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/necklace-islam-svgrepo-com 1.png',
                  color: currentColor,
                ),
                label: 'Tasbeh',
              ),
              const BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.clock),
                label: 'Pray Time',
              ),
            ],
          ),
          body: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                right: -100.w,
                top: 2.h,
                left: -100.w,
                bottom: 5.h,
                child: Opacity(
                    opacity: .1,
                    child: Image.asset(
                      'assets/images/taj-mahal-agra-india.png',
                    )),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(
                    child: IslamicMosqueWidget(),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  const SearchSuraWidget(),
                  cubit.recentlyQuranModel?.recentQuranList == null
                      ? const SizedBox()
                      : const MostRecentlyWidget(),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
                    child: Text(
                      'Suras List',
                      style: customTextStyle(size: 16.sp, color: Colors.white),
                    ),
                  ),
                  cubit.quranModel == null
                      ? const Center(
                          child: CircularProgressIndicator.adaptive(),
                        )
                      : const Expanded(
                          child: SuraWidgetListView(),
                        ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
