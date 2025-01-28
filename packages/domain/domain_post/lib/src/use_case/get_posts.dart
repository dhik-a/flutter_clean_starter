import 'package:domain_post/domain_post.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetPosts {
  final PostRepository repository;

  GetPosts({required this.repository});

  Future<List<Post>> call() async {
    return repository.getPosts();
  }
}
