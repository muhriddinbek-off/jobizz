import 'package:flutter_bloc/flutter_bloc.dart';

class JobCategorySelectCubit extends Cubit<int> {
  JobCategorySelectCubit() : super(0);

  void getIndex(int index) {
    emit(index);
  }
}
