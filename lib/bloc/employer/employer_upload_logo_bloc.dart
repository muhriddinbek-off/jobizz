import 'package:bloc/bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:meta/meta.dart';

part 'employer_upload_logo_event.dart';
part 'employer_upload_logo_state.dart';

class EmployerUploadLogoBloc extends Bloc<EmployerUploadLogoEvent, EmployerUploadLogoState> {
  EmployerUploadLogoBloc() : super(LogoUploadInitial()) {
    on<LogoUpload>(_onUploadLogo);
  }

  Future<void> _onUploadLogo(
    LogoUpload event,
    Emitter<EmployerUploadLogoState> emit,
  ) async {
    emit(LogoUploadProgress());

    try {
      XFile? pickImage = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (pickImage != null) {
        emit(LogoUploadSuccess(pickImage));
      } else {
        emit(LogoUploadError("Yuklashda Xatolik"));
      }
    } catch (e) {
      emit(LogoUploadError(e.toString()));
    }
  }
}
