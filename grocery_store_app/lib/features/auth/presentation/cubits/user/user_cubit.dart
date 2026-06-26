import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:grocery_store_app/features/auth/data/models/user_model.dart';
import 'package:grocery_store_app/features/auth/data/services/auth_service.dart';
import 'package:meta/meta.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(UserInitial());
  final AuthService _auth = AuthService();
  UserModel? currentUser;
  Future<void> loadUser() async {
    emit(UserLoading());
    try {
      currentUser = await _auth.getCurrentUser();
      emit(UserSuccess(user: currentUser!));
    } on FirebaseException catch (e) {
      emit(UserFailure(errMessage: e.message ?? 'Failed to Load User Data'));
    }
  }
}
