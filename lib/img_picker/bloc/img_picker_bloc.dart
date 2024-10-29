import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:image_picker/image_picker.dart';

part 'img_picker_event.dart';
part 'img_picker_state.dart';

class ImgPickerBloc extends Bloc<ImgPickerEvent, ImgPickerState> {
  ImgPickerBloc() : super(const ImgPickerState()) {
    on<CameraCapture>(_cameraPicker);
  }

  void _cameraPicker(CameraCapture event, Emitter<ImgPickerState> emit) {
    //
  }
}
