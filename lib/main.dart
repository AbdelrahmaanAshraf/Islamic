import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic/Core/components/helper/const.dart';
import 'package:islamic/Core/data/local/shared_preference/shared_preference.dart';
import 'package:islamic/Core/data/network/dio_helper.dart';
import 'package:islamic/Features/bottom_navigate_bar_home_view/view/home_view.dart';
import 'package:islamic/Features/hadith_screen/view/widget/hadith_page_view.dart';
import 'package:islamic/Features/hadith_screen/view_model/cubit/Hadith/hadith_cubit.dart';
import 'package:islamic/Features/quran_screen/view/screen/sura_view.dart';
import 'package:islamic/Features/quran_screen/view_model/cubit/Quran/quran_cubit.dart';
import 'package:islamic/Features/splash_screen/view/splash_screen.dart';

Future<void> main() async {
  DioHelper.init();
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreference.sharedInit();
  runApp(const Islamic());
}

class Islamic extends StatelessWidget {
  const Islamic({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => QuranCubit()..getQuran(),
            ),
            BlocProvider(
              create: (context) => HadithCubit()..getHadith(),
            ),
          ],
          child: MaterialApp(
            theme: ThemeData(
              brightness: Brightness.dark,
              fontFamily: 'Janna LT',
              bottomNavigationBarTheme: const BottomNavigationBarThemeData(
                backgroundColor: kPrimaryColor,
                type: BottomNavigationBarType.fixed,
              ),
            ),
            routes: {
              HomeView.id: (context) => const HomeView(),
              SuraView.id: (context) => const SuraView(),
              HadithPageView.id: (context) => const HadithPageView(),
            },
            debugShowCheckedModeBanner: false,
            home: const Scaffold(
              body: SplashScreen(),
            ),
          ),
        );
      },
    );
  }
}
