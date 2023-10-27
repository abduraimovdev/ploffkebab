import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/source/local_source.dart';
import '../../../injector_container.dart';

part 'lang_event.dart';

part 'lang_state.dart';

class LangBloc extends Bloc<LangEvent, LangState> {
  LangBloc()
      : localSource = sl<LocalSource>(),
        super(LangInitial()) {
    on<LangSetEvent>(_setLang);
  }

  final LocalSource localSource;

  Future<void> _setLang(LangSetEvent event, Emitter emit) async{
    if (event.lang == 'uz' || event.lang == 'en' || event.lang == 'ru') {
      await localSource.setLocale(event.lang);
      await localSource.setLangSelected(value: true);
      emit(const LangSuccessSetState());
    }else {
      emit(const LangErrorState());
    }
  }
}
