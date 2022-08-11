part of 'navigation_bloc.dart';

class NavigationEvent extends Equatable {
  const NavigationEvent();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class HomeEvent extends NavigationEvent {}

class IntroHomeEvent extends NavigationEvent {}

class IntroScreenEvent extends NavigationEvent {}

class AuthenticationEvent extends NavigationEvent {}

class SignInEvent extends NavigationEvent {}

class SignUpEvent extends NavigationEvent {}

class ResetPassEvent extends NavigationEvent {}
