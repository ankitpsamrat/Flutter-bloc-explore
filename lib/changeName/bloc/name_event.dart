part of 'name_bloc.dart';

abstract class NameEvent extends Equatable {
  const NameEvent();

  @override
  List<Object> get props => [];
}

class ChangeNameEvent extends NameEvent {
  final String newName;

  const ChangeNameEvent(this.newName);

  @override
  List<Object> get props => [newName];
}
