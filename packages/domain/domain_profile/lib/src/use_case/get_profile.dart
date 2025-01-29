import 'package:domain_profile/domain_profile.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetProfile {
  final ProfileRepository repository;

  GetProfile(this.repository);

  Future<UserProfile> call() async {
    return await repository.getProfile();
  }
}
