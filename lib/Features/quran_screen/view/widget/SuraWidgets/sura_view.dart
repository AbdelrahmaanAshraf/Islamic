import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic/Core/components/helper/const.dart';
import 'package:islamic/Core/components/widgets/view_data_row_design.dart';
import 'package:islamic/Features/quran_screen/model/quran_model.dart';
import 'package:islamic/Features/quran_screen/view/widget/SuraWidgets/ayahs_widget.dart';


class SuraView extends StatelessWidget {
  const SuraView({super.key});

  static const String id = "SuraView";

  @override
  Widget build(BuildContext context) {
    Surahs surahs = ModalRoute.of(context)!.settings.arguments as Surahs;
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
                tilte: surahs.name ?? '',
                leftImage: 'assets/images/Mask group.png',
                rightImage: 'assets/images/Mask group2.png', textColor: kPrimaryColor,
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
  }
}
//