import 'package:domain_post/domain_post.dart';

abstract class PostRepository {
  Future<List<Post>> getPosts();
}
