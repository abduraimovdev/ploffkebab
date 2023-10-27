import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ploff_kebab/src/config/router/app_routes.dart';
import 'package:ploff_kebab/src/core/extension/extension.dart';
import 'package:ploff_kebab/src/core/utils/utils.dart';
import 'package:ploff_kebab/src/presentation/bloc/auth/auth_bloc.dart';
import 'package:ploff_kebab/src/presentation/components/buttons/bottom_navigation_button.dart';
import 'package:ploff_kebab/src/presentation/components/inputs/custom_text_field.dart';
import 'package:ploff_kebab/src/presentation/components/inputs/masked_text_input_formatter.dart';
import 'package:ploff_kebab/src/presentation/components/loading_widgets/modal_progress_hud.dart';

part 'mixin/auth_mixin.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> with AuthMixin {
  @override
  Widget build(BuildContext context) => BlocListener<AuthBloc, AuthState>(
        listener: (_, state) {
          if (state is AuthSuccessState) {
            context.pushNamed(
              Routes.confirmCode,
              extra: state,
            );
            context.read<AuthBloc>().add(
                  AuthPhoneChangeEvent(phoneController.text),
                );
          }
          if(state is AuthErrorState){
            context.pushNamed(
              Routes.register,
              extra: state,
            );
          }
        },
        child: Scaffold(
          backgroundColor:context.colorScheme.background,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            bottom: const PreferredSize(
              preferredSize: Size.fromHeight(kToolbarHeight),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: AppUtils.kPaddingHor16Ver12,
                  child: Text(
                      'Telefon raqami',),
                ),
              ),
            ),
          ),
          body: BlocBuilder<AuthBloc, AuthState>(
            buildWhen: (previous, current) =>
                previous is AuthLoadingState != current is AuthLoadingState,
            builder: (_, state) => ModalProgressHUD(
              inAsyncCall: state is AuthLoadingState,
              child: Padding(
                padding: AppUtils.kPaddingHorizontal16,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppUtils.kGap20,
                    Text('Telefon raqami',style: ThemeTextStyles.light.phoneNumberStyle,),
                    CustomTextField(
                      controller: phoneController,
                      autofocus: true,
                      fillColor: context.colorScheme.background,
                      filled: true,
                      onTap: () {},
                      inputFormatters: [
                        MaskedTextInputFormatter(
                          mask: '## ### ## ##',
                          separator: ' ',
                          filter: RegExp('[0-9]'),
                        ),
                      ],
                      onChanged: (value) {
                        context.read<AuthBloc>().add(
                              AuthPhoneChangeEvent(value ?? ''),
                            );
                      },
                      enabled: true,
                      focusColor:const Color(0xFFFFCC00),
                      contentPadding: AppUtils.kPaddingHor14Ver16,
                      keyboardType: TextInputType.phone,
                      prefixText: '+998 ',
                      prefixStyle: Theme.of(context).textTheme.titleMedium,
                      style: Theme.of(context).textTheme.titleMedium,

                    ),
                  ],
                ),
              ),
            ),
          ),
          bottomNavigationBar: BlocBuilder<AuthBloc, AuthState>(
            buildWhen: (previous, current) =>
                previous is AuthPhoneState != current is AuthPhoneState,
            builder: (_, state) => BottomNavigationButton(
              child: ElevatedButton(
                onPressed: () {
                        context
                            .read<AuthBloc>()
                            .add(AuthCheckMessageEvent(phoneController.text));
                      },
                child: const Text('Продолжить',style: TextStyle(color: Colors.black),),
              ),
            ),
          ),
        ),
      );
}
