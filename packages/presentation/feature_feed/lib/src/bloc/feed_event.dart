part of 'feed_bloc.dart';

@freezed
abstract class FeedEvent with _$FeedEvent {
  const factory FeedEvent.fetchPosts() = FetchPosts;
}
