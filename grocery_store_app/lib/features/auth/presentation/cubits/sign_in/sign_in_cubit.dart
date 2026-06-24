import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:grocery_store_app/features/auth/data/services/auth_service.dart';
import 'package:meta/meta.dart';

part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit() : super(SignInInitial());
  final AuthService _auth = AuthService();
  Future<void> loginUser({
    required String email,
    required String password,
  }) async {
    emit(SignInLoading());
    try {
  await _auth.loginUser(email: email, password: password);
  emit(SignInSuccess());
} on FirebaseAuthException catch (e) {
      emit(
        SignInFailure(errMessage: e.message ?? 'failed to login'),
      );
    }
  }
}
