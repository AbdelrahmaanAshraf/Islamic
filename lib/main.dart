import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic/model/helper/const.dart';
import 'package:islamic/model/network/dio_helper.dart';
import 'package:islamic/view/screens/home_view.dart';
import 'package:islamic/view/screens/splash_screens/splash_screen.dart';
import 'package:islamic/view/widget/quran_widgets/SuraWidgets/sura_view.dart';
import 'package:islamic/view_model/cubit/Hadith/hadith_cubit.dart';
import 'package:islamic/view_model/cubit/Quran/quran_cubit.dart';
import 'package:islamic/view_model/local/shared_preference/shared_preference.dart';

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
