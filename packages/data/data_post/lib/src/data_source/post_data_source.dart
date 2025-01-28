import 'package:domain_post/domain_post.dart';
import 'package:injectable/injectable.dart';

abstract class PostDataSource {
  Future<List<Post>> getPosts();
}

@LazySingleton(as: PostDataSource)
class PostDataSourceImpl implements PostDataSource {
  @override
  Future<List<Post>> getPosts() async {
    return List.generate(
      10,
      (index) => Post(
        id: '$index',
        title: 'Post $index',
        body: 'Post body $index',
        createdDate: DateTime.now().toString(),
        updatedDate: DateTime.now().toString(),
      ),
    );
  }
}
