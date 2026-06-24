import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:grocery_store_app/features/auth/data/services/auth_service.dart';
import 'package:meta/meta.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());
  final AuthService _auth = AuthService();
  Future<void> registerUser({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
  }) async {
    emit(RegisterLoading());
    try {
      await _auth.registerUser(
        email: email,
        password: password,
        firstName: firstName,
        lastName: lastName,
      );
      emit(RegisterSuccess());
    } on FirebaseAuthException catch (e) {
      emit(
        RegisterFailure(errMessage: e.message ?? 'failed to register account'),
      );
    } on FirebaseException catch (e) {
      emit(
        RegisterFailure(
          errMessage: e.message ?? 'something went wrong , try again later',
        ),
      );
    }
  }
}
