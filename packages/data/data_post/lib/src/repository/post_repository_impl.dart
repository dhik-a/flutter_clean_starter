import 'package:domain_post/domain_post.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: PostRepository)
class PostRepositoryImpl implements PostRepository {
  @override
  Future<List<Post>> getPosts() async {
    return List.generate(
      10,
      (index) => Post(
        id: '$index',
        title: 'Post $index',
        body: 'Post body $index',
      ),
    );
  }
}
