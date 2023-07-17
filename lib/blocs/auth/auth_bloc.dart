import 'package:bloc/bloc.dart';
import 'package:epkl/models/forms/sign_in_form_model.dart';
import 'package:epkl/models/forms/sign_up_form_model.dart';
import 'package:epkl/models/tables/user_model.dart';
import 'package:epkl/services/auth_service.dart';
import 'package:epkl/shared/shared_class.dart';
import 'package:equatable/equatable.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<AuthEvent>((event, emit) async {
      try {
        emit(AuthLoading());
        if (event is AuthLogin) {
          await _handleLogin(event.data, emit);
        } else if (event is AuthRegister) {
          await _handleRegister(event.data, emit);
        } else if (event is AuthLogout) {
          await _handleLogout(emit);
        }
      } catch (e) {
        if (e is ApiErrorException) {
          emit(AuthFailedApi(e));
        } else {
          emit(AuthFailed(e.toString()));
        }
      }
    });
  }
}

Future<void> _handleLogin(SignInFormModel data, Emitter<AuthState> emit) async {
  final UserModel user = await AuthService().login(data);
  emit(AuthSuccess(user));
}

Future<void> _handleRegister(
    SignUpFormModel data, Emitter<AuthState> emit) async {
  final UserModel user = await AuthService().register(data);
  emit(AuthSuccess(user));
}

Future<void> _handleLogout(Emitter<AuthState> emit) async {
  await AuthService().logout();
  emit(AuthInitial());
}
