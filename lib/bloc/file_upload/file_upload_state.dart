part of 'file_upload_bloc.dart';

@immutable
sealed class FileUploadState {}

final class FileUploadInitial extends FileUploadState {}

final class FileUploadProgress extends FileUploadState {}

final class FileUploadSuccess extends FileUploadState {
  final FilePickerResult massage;
  FileUploadSuccess(this.massage);
}

final class FileUploadError extends FileUploadState {
  final String errorMassage;
  FileUploadError(this.errorMassage);
}
