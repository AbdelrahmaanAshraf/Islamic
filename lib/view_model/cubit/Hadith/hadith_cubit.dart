import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islamic/model/hadith_model.dart';
import 'package:islamic/view_model/cubit/Hadith/hadith_state.dart';

class HadithCubit extends Cubit<HadithStats> {
  HadithCubit() : super(HadithInitState());

  static HadithCubit get(context) => BlocProvider.of<HadithCubit>(context);

  HadithModel? hadithModel;

  Future<void> getHadith() async {
    emit(HadithLoadingState());
    await Dio().get('https://hadis-api-id.vercel.app/hadith/abu-dawud').then(
      (response) {
        hadithModel = HadithModel.fromJson(response.data);
        emit(GetHadithSuccessState());
        print(response.statusCode.toString());
      },
    ).catchError(
      (e) {
        emit(GetHadithFailureState());
        print(e.toString());
      },
    );
  }
}
