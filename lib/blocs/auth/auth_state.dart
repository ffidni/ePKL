part of 'auth_bloc.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class AuthSuccess extends AuthState {
  final UserModel user;

  const AuthSuccess(this.user);

  @override
  List<Object> get props => [user];
}

class AuthFailedApi extends AuthState {
  final ApiErrorException error;

  const AuthFailedApi(this.error);

  @override
  List<Object> get props => [error];
}

class AuthFailed extends AuthState {
  final String error;

  const AuthFailed(this.error);

  @override
  List<Object> get props => [error];
}
