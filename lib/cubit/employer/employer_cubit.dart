import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobee/data/models/employer/employer_model.dart';

class EmployerCubit extends Cubit<EmployerModel> {
  EmployerCubit() : super(EmployerModel.initialValue);

  void changeRegion(String value) {
    emit(state.copyWith(region: value));
  }

  void changeCity(String value) {
    emit(state.copyWith(city: value));
  }

  void changeJobType(String value) {
    emit(state.copyWith(jobOfType: value));
  }

  void changeJobLine(String value) {
    emit(state.copyWith(jobLine: value));
  }

  void changeType(String value) {
    emit(state.copyWith(jobOfType: value));
  }

  void changeJobExperience(String value) {
    emit(state.copyWith(jobExperience: value));
  }

  void changeJobLevel(String value) {
    emit(state.copyWith(jobLevel: value));
  }

  void changePrice(String value) {
    emit(state.copyWith(price: value));
  }

  void changeDescription(String value) {
    emit(state.copyWith(description: value));
  }

  void changeTime(String value) {
    emit(state.copyWith(jobOfTime: value));
  }

  // void changeLogo(XFile value) {
  //   emit(state.copyWith(companyLogo: value));
  // }
}
