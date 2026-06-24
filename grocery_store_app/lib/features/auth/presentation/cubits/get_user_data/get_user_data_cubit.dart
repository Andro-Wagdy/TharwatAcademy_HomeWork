import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:grocery_store_app/features/auth/data/models/user_model.dart';
import 'package:grocery_store_app/features/auth/data/services/auth_service.dart';
import 'package:meta/meta.dart';

part 'get_user_data_state.dart';

class GetUserDataCubit extends Cubit<GetUserDataState> {
  GetUserDataCubit() : super(GetUserDataInitial());
  final AuthService _auth = AuthService();
  Future<void> getUserData() async {
    emit(GetUserDataLoading());
    try {
      final UserModel user = await _auth.getCurrentUser();
      emit(GetUserDataSuccess(user: user));
    } on FirebaseException catch (e) {
      emit(
        GetUserDataFailure(errMessage: e.message ?? 'Failed to Load User Data'),
      );
    }
  }
}
