import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../../../data/models/profile_model.dart';
import '../../../data/repos/profile_repo.dart';
part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final ProfileRepo repo;

  ProfileCubit(this.repo) : super(const ProfileInitial());

  Future<void> getProfile() async {
    emit(const ProfileLoading());

    try {
      final profile = await repo.getProfile();
      emit(ProfileSuccess(profile: profile));
    } catch (e) {
      emit(ProfileFailure(e.toString()));
    }
  }

  Future<void> updateProfile(Map<String, dynamic> data) async {
    emit(const ProfileLoading());

    try {
      final profile = await repo.updateProfile(data);
      emit(ProfileSuccess(profile: profile));
    } catch (e) {
      emit(ProfileFailure(e.toString()));
    }
  }
}
