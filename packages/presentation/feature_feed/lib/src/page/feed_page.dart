import 'package:auto_route/annotations.dart';
import 'package:auto_route/src/route/page_route_info.dart';
import 'package:domain_post/domain_post.dart';
import 'package:feature_common/feature_common.dart';
import 'package:feature_feed/feature_feed.dart';
import 'package:feature_feed/src/bloc/feed_bloc.dart';
import 'package:feature_feed/src/widget/post_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: FeedRouteProvider)
class FeedRouteProviderImpl implements FeedRouteProvider {
  @override
  PageRouteInfo route() {
    return FeedRoute();
  }
}

@RoutePage()
class FeedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => GetIt.I.get<FeedBloc>()..add(FeedEvent.fetchPosts()),
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'Feed',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ),
          body: Container(
            child: BlocSelector<FeedBloc, FeedState, List<Post>>(
              selector: (state) => state.posts,
              builder: (context, state) {
                return ListView(
                  children: state.map((post) => PostItem(post: post)).toList(),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
