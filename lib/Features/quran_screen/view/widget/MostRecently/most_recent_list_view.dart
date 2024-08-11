import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic/Features/quran_screen/model/recently_quran_model.dart';
import 'package:islamic/Features/quran_screen/view/widget/MostRecently/most_recently_card_widget.dart';


class MostRecentListView extends StatelessWidget {
  const MostRecentListView({super.key, this.recentlyQuranModel});

  final RecentlyQuranModel? recentlyQuranModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.h,
      width: double.infinity,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: recentlyQuranModel?.recentQuranList.length ?? 2,
        itemBuilder: (context, index) => const MostRecentlyCardWidget(),
      ),
    );
  }
}
