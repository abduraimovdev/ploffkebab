part of 'lang_bloc.dart';

abstract class LangState extends Equatable {
  const LangState();
}

class LangInitial extends LangState {
  @override
  List<Object?> get props => [];
}

class LangSuccessSetState extends LangState {
  const LangSuccessSetState();

  @override
  List<Object?> get props => [];
}

class LangErrorState extends LangState {
  const LangErrorState();

  @override
  List<Object?> get props => [];
}
