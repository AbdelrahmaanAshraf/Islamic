import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic/model/helper/const.dart';
import 'package:islamic/model/quran_model.dart';
import 'package:islamic/view/widget/quran_widgets/SuraWidgets/ayahs_widget.dart';
import 'package:islamic/view/widget/quran_widgets/SuraWidgets/ayahs_widget_list_view.dart';
import 'package:islamic/view/widget/quran_widgets/view_data_row_design.dart';
import 'package:islamic/view_model/cubit/Quran/quran_cubit.dart';
import 'package:islamic/view_model/cubit/Quran/quran_stats.dart';

class SuraView extends StatelessWidget {
  const SuraView({super.key});

  static const String id = "SuraView";

  @override
  Widget build(BuildContext context) {
    var cubit = QuranCubit.get(context);
    Surahs surahs = ModalRoute.of(context)!.settings.arguments as Surahs;
    return BlocConsumer<QuranCubit, QuranStats>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              surahs.englishName ?? '',
              style: customTextStyle(color: kPrimaryColor, size: 20.sp),
            ),
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_outlined,
                color: kPrimaryColor,
                size: 30.sp,
              ),
            ),
          ),
          body: Padding(
            padding: EdgeInsets.all(8.sp),
            child: Container(
              decoration: BoxDecoration(
                image: bottomMosqueImage(),
              ),
              child: Column(
                children: [
                  ViewDataRowDesign(
                    tilte: surahs.name ?? 'wdw',
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemBuilder: (context, index) => AyahsWidget(
                        ayahs: surahs.ayahs?[index] ?? Ayahs(),
                      ),
                      itemCount: surahs.ayahs?.length ?? 5,
                    )
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
