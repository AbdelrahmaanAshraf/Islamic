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
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Stack(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      children: [
        PositionedDirectional(
          top: -height * .0001,
          bottom: - height * .0001,
          start: -width * .1,
          end: -width * .1,
          child: Opacity(
            opacity: .1,
            child: Image.asset(
              'assets/images/vertical-shot-hassan-ii-mosque-casablanca-morocco.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Column(
          children: [
            const Center(
              child: IslamicMosqueWidget(),
            ),
            SizedBox(height: 10.h),
            const CustomSearchWidget(
                icon: FontAwesomeIcons.bookOpen, searchHint: 'Hadith Name'),
            SizedBox(height: 8.h),
            const Expanded(
              child: HadithListView(),
            ),
          ],
        ),
      ],
    );
  }
}
