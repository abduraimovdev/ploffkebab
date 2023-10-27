import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ploff_kebab/src/data/models/auth/send_message_request.dart';
import 'package:ploff_kebab/src/domain/repositories/auth/auth_repository.dart';

part 'auth_state.dart';

part 'auth_event.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this.authRepository) : super(const AuthInitialState()) {
    on<AuthPhoneChangeEvent>(_onChanged);
    on<AuthCheckMessageEvent>(_onSendMessage);
  }

  final AuthRepository authRepository;


  void _onChanged(AuthPhoneChangeEvent event, Emitter<AuthState> emit) {
    if (event.value.length <= 11) {
      emit(const AuthInitialState());
      return;
    }

    emit(AuthPhoneState(event.value));
  }

  Future<void> _onSendMessage(
      AuthCheckMessageEvent event, Emitter<AuthState> emit) async {
    emit(const AuthLoadingState());

    final result = await authRepository.codeMessage(
      request: SendMessageRequest(
        phone: "+998${event.phone.replaceAll(" ", "")}",
      ),
    );


    result.fold(
      (l) {
        emit(const AuthErrorState());
      },
      (r) {
        emit(
          AuthSuccessState(
            r.data?['sms_id'] as String? ?? '',
            "+998${event.phone.replaceAll(" ", "")}",
            event.phone,
            r.data?['data'] as Map? ?? {},
          ),
        );
      },
    );
  }
}
