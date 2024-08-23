import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic/Core/components/helper/const.dart';
import 'package:islamic/Features/quran_screen/model/quran_model.dart';
import 'package:islamic/Features/quran_screen/view/screen/sura_view.dart';
import 'package:islamic/Features/quran_screen/view_model/cubit/Quran/quran_cubit.dart';
import 'package:islamic/Features/quran_screen/view_model/cubit/Quran/quran_stats.dart';

class SuraListTileWidget extends StatelessWidget {
  const SuraListTileWidget({super.key, required this.surahs});

  final Surahs surahs;

  @override
  Widget build(BuildContext context) {
    var cubit = QuranCubit.get(context);
    return BlocBuilder<QuranCubit, QuranStats>(
      builder: (context, state) {
        return ListTile(
          onTap: () {
            Navigator.pushNamed(context, SuraView.id, arguments: surahs);
            cubit.setRecentlyQuran(
                name: surahs.name ?? 'الفاتحه',
                engName: surahs.englishName ?? 'Al-Fatiha',
                number: surahs.number ?? 1);
          },
          leading: Container(
            width: 50.w,
            height: 50.h,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: Image.asset(
                  'assets/images/suraIcon.png',
                  fit: BoxFit.cover,
                ).image,
              ),
            ),
            child: Center(
              child: Text(
                surahs.number?.toString() ?? '1',
                style: customTextStyle(
                    size: 16.sp, color: Colors.white, weight: FontWeight.bold),
              ),
            ),
          ),
          title: Text(
            surahs.englishName ?? 'Al-Fatiha',
            style: customTextStyle(size: 20.sp, weight: FontWeight.w700),
          ),
          subtitle: Text(
            '${surahs.ayahs?.length ?? '7'} Verses',
            style: customTextStyle(
              size: 14.sp,
            ),
          ),
          trailing: Text(
            surahs.name ?? 'الفاتحه',
            style: customTextStyle(size: 16.sp, weight: FontWeight.w700),
          ),
        );
      },
    );
  }
}
