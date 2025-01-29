import 'package:domain_profile/domain_profile.dart';

abstract class ProfileRepository {
  Future<UserProfile> getProfile();
}
