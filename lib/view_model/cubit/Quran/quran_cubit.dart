import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islamic/model/quran_model.dart';
import 'package:islamic/model/recently_quran_model.dart';
import 'package:islamic/view_model/cubit/Quran/quran_stats.dart';

class QuranCubit extends Cubit<QuranStats> {
  QuranCubit() : super(QuranInitState());

  static QuranCubit get(context) => BlocProvider.of<QuranCubit>(context);
  QuranModel? quranModel;

  //Ayahs ayahs;
  RecentlyQuranModel? recentlyQuranModel;

  Future<void> getQuran() async {
    emit(QuranLoadingState());
    await Dio()
        .get('https://api.alquran.cloud/v1/quran/quran-uthmani')
        .then((response) {
      quranModel = QuranModel.fromJson(response.data);
      emit(GetQuranSuccessState());
      print(response.statusCode.toString());
    }).catchError((e) {
      emit(GetQuranFailureState());
      print(e);
    });
  }

  void setRecentlyQuran({required String name,required  String engName,required  int number}) {
    recentlyQuranModel?.recentQuranList.add(
      RecentlyQuranModel(
          suraName: name, suraNameEng: engName, ayahsNumber: number),
    );
    emit(SetRecentlyQuranSuccessState());
  }
}
