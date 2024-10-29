part of 'img_picker_bloc.dart';

abstract class ImgPickerEvent extends Equatable {
  const ImgPickerEvent();

  @override
  List<Object> get props => [];
}

class CameraCapture extends ImgPickerEvent {}

class GalleryPicker extends ImgPickerEvent {}
