import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islamic/Features/quran_screen/model/quran_model.dart';
import 'package:islamic/Features/quran_screen/view/widget/SuraWidgets/sura_list_tile_widget.dart';
import 'package:islamic/Features/quran_screen/view_model/cubit/Quran/quran_cubit.dart';
import 'package:islamic/Features/quran_screen/view_model/cubit/Quran/quran_stats.dart';

class SuraWidgetListView extends StatelessWidget {
  const SuraWidgetListView({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = QuranCubit.get(context);
    return BlocBuilder<QuranCubit, QuranStats>(
      builder: (context, state) {
        return ListView.separated(
            padding: EdgeInsets.zero,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) => SuraListTileWidget(
                  surahs: cubit.quranModel?.data?.surahs?[index] ?? Surahs(),
                ),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: cubit.quranModel?.data?.surahs?.length ?? 10);
      },
    );
  }
}
