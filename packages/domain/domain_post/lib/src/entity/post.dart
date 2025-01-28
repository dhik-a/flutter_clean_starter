import 'package:freezed_annotation/freezed_annotation.dart';

part 'post.freezed.dart';

@freezed
class Post with _$Post {
  const factory Post({
    @Default('') String id,
    @Default('') String title,
    @Default('') String body,
    @Default('') String createdDate,
    @Default('') String updatedDate,
  }) = _Post;
}
