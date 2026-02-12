part of 'img_picker_bloc.dart';

class ImgPickerState extends Equatable {
  final XFile? file;

  const ImgPickerState({this.file});

  ImgPickerState copyWith({XFile? file}) {
    return ImgPickerState(file: file ?? this.file);
  }

  @override
  List<Object> get props => [file!];
}
