import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islamic/Features/sebha_screen/view_model/cubit/sebha_state.dart';

class SebhaCubit extends Cubit<SebhaState> {
  SebhaCubit() : super(SebhaInitial());

  static SebhaCubit get(context) => BlocProvider.of<SebhaCubit>(context);

  double angle = 0;
  int counter = 0;
  int currentIndex = 0;
  List<String> tasbeh =[
    'سبحان الله',
    'الحمد الله',
    'الله أكبر'
  ];

  void rotateSebha() {
    angle--;
    counter++;
    if(counter == 34){
      currentIndex++;
      counter = 0;
    }
    if(currentIndex == tasbeh.length){
      currentIndex = 0;
    }
    emit(SebhaRotateSuccessState());
  }
  void resetCounter(){
    counter = 0;
    //currentIndex = 0;
    emit(SebhaResetCounterState());
  }
}