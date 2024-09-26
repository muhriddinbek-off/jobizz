import 'package:bloc/bloc.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'file_upload_event.dart';
part 'file_upload_state.dart';

class FileUploadBloc extends Bloc<FileUploadEvent, FileUploadState> {
  FileUploadBloc() : super(FileUploadInitial()) {
    on<FetchFileUpload>(_onUploadFile);
  }
  Future<void> _onUploadFile(
    FetchFileUpload event,
    Emitter<FileUploadState> emit,
  ) async {
    emit(FileUploadProgress());
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles();
      if (result != null) {
        emit(FileUploadProgress());
        emit(FileUploadSuccess(result));
      } else {
        emit(FileUploadError("File yuklanishda xatolik yuz berdi"));
      }
    } catch (e) {
      emit(FileUploadError(e.toString()));
    }
  }
}
