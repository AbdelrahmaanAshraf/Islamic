import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic/Core/components/helper/const.dart';
import 'package:islamic/Features/quran_screen/view/widget/MostRecently/most_recent_list_view.dart';


class MostRecentlyWidget extends StatelessWidget {
  const MostRecentlyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
