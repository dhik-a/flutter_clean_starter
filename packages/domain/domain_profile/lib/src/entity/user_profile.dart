import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile.freezed.dart';

@freezed
class UserProfile with _$UserProfile {
  const factory UserProfile({
    @Default('') String id,
    @Default('') String name,
    @Default('') String email,
    @Default('') String bio,
  }) = _UserProfile;
}
