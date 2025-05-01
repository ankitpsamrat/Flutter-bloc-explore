import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'name_event.dart';
part 'name_state.dart';

class NameBloc extends Bloc<NameEvent, NameState> {
  NameBloc() : super(const NameState(name: 'Ankit')) {
    on<ChangeNameEvent>((event, emit) {
      emit(NameState(name: event.newName));
    });
  }
}
