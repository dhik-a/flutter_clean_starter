import 'package:domain_post/domain_post.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetPosts {
  Future<List<Post>> call() async {
    return [];
  }
}
