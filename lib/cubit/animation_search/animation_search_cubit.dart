import 'package:flutter_bloc/flutter_bloc.dart';

class AnimationSearchCubit extends Cubit<bool> {
  AnimationSearchCubit() : super(false);

  void isChangeValue(bool isValue) {
    emit(!isValue);
  }
}
