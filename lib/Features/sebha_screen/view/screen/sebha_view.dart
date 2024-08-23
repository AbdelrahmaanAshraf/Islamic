import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic/Core/components/helper/const.dart';
import 'package:islamic/Core/components/widgets/islamic_mosque_widget.dart';
import 'package:islamic/Features/sebha_screen/view/widget/sebha_widget.dart';
import 'package:islamic/Features/sebha_screen/view_model/cubit/sebha_state.dart';
import 'package:islamic/Features/sebha_screen/view_model/cubit/shbha_cubit.dart';

class SebhaView extends StatelessWidget {
  const SebhaView({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var cubit = SebhaCubit.get(context);
    return BlocBuilder<SebhaCubit, SebhaState>(
      builder: (BuildContext context, state) { return Stack(
        clipBehavior: Clip.none,
        children: [
          Opacity(
            opacity: .2,
            child: Image.asset(
              'assets/images/seb7a background.png',
              fit: BoxFit.cover,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const IslamicMosqueWidget(),
              SizedBox(
                height: 15.h,
              ),
              Text(
                textAlign: TextAlign.center,
                'سَبِّحِ اسْمَ رَبِّكَ الأعلى ',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 36.sp,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: height * .1,
              ),
              const SebhaWidget(),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 10.w),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: kPrimaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                    ),
                    onPressed: () {
                      cubit.resetCounter();
                    },
                    child: Icon(
                      Icons.rotate_left_sharp,
                      color: Colors.black,
                      size: 30.sp,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ); },
    );
  }
}

