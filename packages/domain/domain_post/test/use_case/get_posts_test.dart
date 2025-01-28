import 'package:domain_post/domain_post.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'get_posts_test.mocks.dart';

@GenerateMocks([PostRepository])
void main() {
  final MockPostRepository mockPostRepository = MockPostRepository();
  final GetPosts getPosts = GetPosts(repository: mockPostRepository);

  group('get posts', () {
    test('should get posts from repository', () async {
      // arrange
      when(mockPostRepository.getPosts()).thenAnswer((_) async {
        return List.generate(
          10,
          (index) => Post(
            id: '$index',
            title: 'Post $index',
            body: 'Post body $index',
          ),
        );
      });

      // act
      final posts = await getPosts.call();

      // assert
      expect(posts, isA<List<Post>>());
    });
  });
}
