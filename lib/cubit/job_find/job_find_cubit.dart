import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobee/data/models/job_find/job_find_model.dart';

class JobFindCubit extends Cubit<JobFindModel> {
  JobFindCubit() : super(JobFindModel.initialValue);

  void changeRegion(String value) {
    emit(state.copyWith(region: value));
  }

  void changeCity(String value) {
    emit(state.copyWith(city: value));
  }

  void changeJobType(String value) {
    emit(state.copyWith(jobType: value));
  }

  void changeJobLine(String value) {
    emit(state.copyWith(jobLine: value));
  }

  void changeType(String value) {
    emit(state.copyWith(type: value));
  }

  void changeJobExperience(String value) {
    emit(state.copyWith(jobExperience: value));
  }

  void changeJobDescription(String value) {
    emit(state.copyWith(jobDescription: value));
  }

  void changeJobLevel(String value) {
    emit(state.copyWith(jobLevel: value));
  }
}
