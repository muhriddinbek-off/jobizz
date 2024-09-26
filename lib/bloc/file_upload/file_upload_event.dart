part of 'file_upload_bloc.dart';

@immutable
sealed class FileUploadEvent {}

class FetchFileUpload extends FileUploadEvent {}
