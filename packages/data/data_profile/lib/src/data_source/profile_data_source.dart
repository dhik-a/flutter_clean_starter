import 'package:domain_profile/domain_profile.dart';
import 'package:injectable/injectable.dart';

abstract class ProfileDataSource {
  Future<UserProfile> getProfile();
}

@LazySingleton(as: ProfileDataSource)
class ProfileDataSourceImpl implements ProfileDataSource {
  @override
  Future<UserProfile> getProfile() async {
    return UserProfile(
      id: '1',
      name: 'John Doe',
      email: 'John@Doe.com',
      bio: 'Hello, I am John Doe',
    );
  }
}
