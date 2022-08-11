import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:flutter/material.dart';

part 'navigation_event.dart';

part 'navigation_state.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc() : super(const NavigationState()) {
    on<HomeEvent>((event, emit) => emit(HomeState()));
    on<IntroHomeEvent>((event, emit) => emit(IntroHomeState()));
    on<IntroScreenEvent>((event, emit) => emit(IntroScreenState()));
    on<AuthenticationEvent>((event, emit) => emit(AuthenticationState()));
    on<SignInEvent>((event, emit) => emit(SignInState()));
    on<SignUpEvent>((event, emit) => emit(SignUpState()));
    on<ResetPassEvent>((event, emit) => emit(ResetPassState()));
  }
}
