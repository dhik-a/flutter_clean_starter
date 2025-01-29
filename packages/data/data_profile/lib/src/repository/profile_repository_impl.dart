import 'package:data_profile/src/data_source/profile_data_source.dart';
import 'package:domain_profile/domain_profile.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ProfileRepository)
class ProfileRepositoryImpl implements ProfileRepository {
  final ProfileDataSource dataSource;

  ProfileRepositoryImpl(this.dataSource);

  @override
  Future<UserProfile> getProfile() async {
    return dataSource.getProfile();
  }
}
