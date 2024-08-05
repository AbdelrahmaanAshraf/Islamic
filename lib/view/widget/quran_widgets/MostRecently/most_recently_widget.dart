import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic/model/helper/const.dart';
import 'package:islamic/view/widget/quran_widgets/MostRecently/most_recent_list_view.dart';
import 'package:islamic/view_model/cubit/Quran/quran_cubit.dart';

class MostRecentlyWidget extends StatelessWidget {
  const MostRecentlyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var cubit = QuranCubit.get(context);
    return BlocConsumer(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextButton(
              onPressed: () {},
              child: Text(
                'Most Recently',
                style: customTextStyle(size: 16.sp, color: Colors.white),
              ),
            ),
            const MostRecentListView(),
          ],
        );
      },
      listener: (context, state) {},
    );
  }
}
