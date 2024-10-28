import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'img_picker_event.dart';
part 'img_picker_state.dart';

class ImgPickerBloc extends Bloc<ImgPickerEvent, ImgPickerState> {
  ImgPickerBloc() : super(ImgPickerInitial()) {
    on<ImgPickerEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
