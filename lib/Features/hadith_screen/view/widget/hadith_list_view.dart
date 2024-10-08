import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islamic/Features/hadith_screen/model/hadith_model.dart';
import 'package:islamic/Features/hadith_screen/view/widget/hadith_widget.dart';
import 'package:islamic/Features/hadith_screen/view_model/cubit/Hadith/hadith_cubit.dart';
import 'package:islamic/Features/hadith_screen/view_model/cubit/Hadith/hadith_state.dart';

class HadithListView extends StatelessWidget {
  const HadithListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var cubit = HadithCubit.get(context);
    return BlocConsumer<HadithCubit, HadithStats>(
      listener: (context, state) {},
      builder: (context, state) {
        return cubit.hadithModel == null
            ? const Center(
                child: CircularProgressIndicator.adaptive(),
              )
            : ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => HadithWidget(
                  items: cubit.hadithModel?.items?[index] ?? Items(),
                ),
                itemCount: cubit.hadithModel?.items?.length ?? 5,
              );
      },
    );
  }
}
