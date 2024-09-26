part of 'employer_upload_logo_bloc.dart';

@immutable
sealed class EmployerUploadLogoState {}

final class LogoUploadInitial extends EmployerUploadLogoState {}

final class LogoUploadProgress extends EmployerUploadLogoState {}

final class LogoUploadSuccess extends EmployerUploadLogoState {
  final XFile xFile;
  LogoUploadSuccess(this.xFile);
}

final class LogoUploadError extends EmployerUploadLogoState {
  final String errorMassage;
  LogoUploadError(this.errorMassage);
}
