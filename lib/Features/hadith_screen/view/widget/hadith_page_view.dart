import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic/Core/components/helper/const.dart';
import 'package:islamic/Core/components/widgets/view_data_row_design.dart';
import 'package:islamic/Features/hadith_screen/model/hadith_model.dart';

class HadithPageView extends StatelessWidget {
  const HadithPageView({super.key});

  static const String id = 'HadithPageView';

  @override
  Widget build(BuildContext context) {
    Items items = ModalRoute.of(context)!.settings.arguments as Items;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'حد يث',
          style: TextStyle(
            color: kPrimaryColor,
            fontSize: 30.sp,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_outlined,
            color: kPrimaryColor,
            size: 25.sp,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: bottomMosqueImage(),
        ),
        child: Column(
          children: [
            ViewDataRowDesign(
                tilte: 'الحد يث ${items.number.toString()}' ?? '',
                leftImage: 'assets/images/Mask group.png',
                rightImage: 'assets/images/Mask group2.png',
                textColor: kPrimaryColor),
            SizedBox(height: 10.h),
            Text(
              items.arab ?? '',
              style: customTextStyle(
                  size: 20.sp, color: kPrimaryColor, weight: FontWeight.w700),
              softWrap: true,
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
