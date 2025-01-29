import 'package:domain_profile/domain_profile.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'profile_event.dart';

part 'profile_state.dart';

part 'profile_bloc.freezed.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final GetProfile getProfile;

  ProfileBloc({
    required this.getProfile,
  }) : super(ProfileState()) {
    on<_FetchProfileEvent>(_onFetchProfileEvent);
  }

  Future<void> _onFetchProfileEvent(
    _FetchProfileEvent event,
    Emitter<ProfileState> emit,
  ) async {
    final profile = await getProfile.call();
    emit(state.copyWith(userProfile: profile));
  }
}
