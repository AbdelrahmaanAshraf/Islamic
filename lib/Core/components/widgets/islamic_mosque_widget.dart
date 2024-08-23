import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic/Core/components/widgets/islamic_text.dart';

class IslamicMosqueWidget extends StatelessWidget {
  const IslamicMosqueWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(top: 20.h),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Image.asset('assets/images/Mosque-01 1.png'),
          PositionedDirectional(
              start: width * 0.13,
              top: height * 0.08,
              child: const IslamicText())
        ],
      ),
    );
  }
}
