part of 'lang_bloc.dart';

abstract class LangEvent {
  const LangEvent();
}

class LangSetEvent extends LangEvent {
  const LangSetEvent({required this.lang});

  final String lang;
}
