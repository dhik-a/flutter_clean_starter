import 'package:data_post/src/data_source/post_data_source.dart';
import 'package:domain_post/domain_post.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: PostRepository)
class PostRepositoryImpl implements PostRepository {
  final PostDataSource dataSource;

  PostRepositoryImpl({required this.dataSource});

  @override
  Future<List<Post>> getPosts() async {
    return dataSource.getPosts();
  }
}
