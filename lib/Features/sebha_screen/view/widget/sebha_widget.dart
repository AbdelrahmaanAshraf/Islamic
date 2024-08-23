import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic/Features/sebha_screen/view_model/cubit/sebha_state.dart';
import 'package:islamic/Features/sebha_screen/view_model/cubit/shbha_cubit.dart';

class SebhaWidget extends StatelessWidget {
  const SebhaWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var cubit = SebhaCubit.get(context);
    return BlocBuilder<SebhaCubit, SebhaState>(
      builder: (BuildContext context, state) {
        return GestureDetector(
          onTap: cubit.rotateSebha,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              PositionedDirectional(
                top: -height * .085,
                start: width * .48,
                child: Image.asset('assets/images/head of seb7a.png'),
              ),
              Transform.rotate(
                angle: cubit.angle,
                child: Image.asset(
                  'assets/images/Seb7a.png',
                  fit: BoxFit.contain,
                ),
              ),
              PositionedDirectional(
                top: height*.15,
                start: width * .25,
                child: Column(
                  children: [
                    Container(
                      width: width * .5,
                      height: height * .1,
                      alignment: Alignment.center,
                      child: Text(
                        cubit.tasbeh[cubit.currentIndex],
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 36.sp,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Container(
                      width: width * .5,
                      height: height * .05,
                      alignment: Alignment.center,
                      child: Text(
                        cubit.counter.toString(),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 36.sp,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        );
      },
    );
  }
}
