import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islamic/Features/quran_screen/model/quran_model.dart';
import 'package:islamic/Features/quran_screen/view/widget/SuraWidgets/ayahs_widget.dart';
import 'package:islamic/Features/quran_screen/view_model/cubit/Quran/quran_cubit.dart';
import 'package:islamic/Features/quran_screen/view_model/cubit/Quran/quran_stats.dart';


class AyahsWidgetListView extends StatelessWidget {
  const AyahsWidgetListView({super.key, required this.surahs});

 final Surahs surahs;

  @override
  Widget build(BuildContext context) {
    var cubit = QuranCubit.get(context);
    return BlocConsumer<QuranCubit, QuranStats>(
      listener: (context, state) {},
      builder: (context, state) {
        return ListView.builder(
          itemBuilder: (context, index) => AyahsWidget(
            ayahs: cubit.quranModel?.data?.surahs?[index].ayahs?[index] ?? Ayahs(),
          ),
          itemCount: cubit.quranModel?.data?.surahs?[1].ayahs?.length ?? 2,
        );
      },
    );
  }
}
//surahs.ayahs?[index]