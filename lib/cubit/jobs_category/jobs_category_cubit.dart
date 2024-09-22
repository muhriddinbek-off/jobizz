import 'package:flutter_bloc/flutter_bloc.dart';

class JobsCategoryCubit extends Cubit<int> {
  JobsCategoryCubit() : super(0);

  void getChangeIndex(int value) {
    emit(value);
  }
}
