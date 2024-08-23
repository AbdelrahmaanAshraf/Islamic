import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:islamic/Core/components/helper/const.dart';
import 'package:islamic/Core/components/widgets/custom_search_widget.dart';
import 'package:islamic/Core/components/widgets/islamic_mosque_widget.dart';
import 'package:islamic/Features/quran_screen/view/widget/MostRecently/most_recently_widget.dart';
import 'package:islamic/Features/quran_screen/view/widget/SuraWidgets/sura_widget_list_view.dart';
import 'package:islamic/Features/quran_screen/view_model/cubit/Quran/quran_cubit.dart';
import 'package:islamic/Features/quran_screen/view_model/cubit/Quran/quran_stats.dart';

class QuranView extends StatelessWidget {
  const QuranView({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var cubit = QuranCubit.get(context);
    return BlocConsumer<QuranCubit, QuranStats>(
      listener: (context, state) {},
      builder: (context, state) {
        return Stack(
          clipBehavior: Clip.none,
          children: [
            PositionedDirectional(
              end: -width * .22,
              top: height * .05,
              start: -width * .22,
              bottom: height * .01,
              child: Opacity(
                opacity: .1,
                child: Image.asset(
                  'assets/images/taj-mahal-agra-india.png',
                  fit: BoxFit.cover,
                ),
              ),
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
                const CustomSearchWidget(
                  icon: FontAwesomeIcons.bookQuran,
                  searchHint: 'Sura Name',
                ),
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
                    ? const SizedBox(
                        height: 500,
                        child: Center(
                          child: CircularProgressIndicator.adaptive(),
                        ),
                      )
                    : const Expanded(
                        child: SuraWidgetListView(),
                      ),
              ],
            ),
          ],
        );
      },
    );
  }
}
