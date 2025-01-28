import 'package:domain_post/domain_post.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'feed_event.dart';

part 'feed_state.dart';

part 'feed_bloc.freezed.dart';

@injectable
class FeedBloc extends Bloc<FeedEvent, FeedState> {
  final GetPosts getPosts;

  FeedBloc({
    required this.getPosts,
  }) : super(FeedState()) {
    on<_FetchPostsEvent>(_onFetchPostsEvent);
  }

  Future<void> _onFetchPostsEvent(
    _FetchPostsEvent event,
    Emitter<FeedState> emit,
  ) async {
    final posts = await getPosts.call();
    emit(state.copyWith(posts: posts));
  }
}
