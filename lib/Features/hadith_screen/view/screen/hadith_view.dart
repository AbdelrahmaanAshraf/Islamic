import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:islamic/Core/components/widgets/custom_search_widget.dart';
import 'package:islamic/Core/components/widgets/islamic_mosque_widget.dart';
import 'package:islamic/Features/hadith_screen/view/widget/hadith_list_view.dart';

class HadithView extends StatelessWidget {
  const HadithView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
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
              'assets/images/vertical-shot-hassan-ii-mosque-casablanca-morocco.png',
              fit: BoxFit.scaleDown,
            ),
          ),
        ),
        Column(
          children: [
            const Center(child: IslamicMosqueWidget()),
            SizedBox(height: 10.h),
            const CustomSearchWidget(
                icon: FontAwesomeIcons.bookOpen, searchHint: 'Hadith Name'),
            const Expanded(child:  HadithListView()),
          ],
        ),
      ],
    );
  }
}

