import 'package:auto_route/annotations.dart';
import 'package:auto_route/src/route/page_route_info.dart';
import 'package:feature_common/feature_common.dart';
import 'package:feature_feed/feature_feed.dart';
import 'package:flutter/material.dart';
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
    return Scaffold(
      body: Container(
        child: Center(
          child: Text("Not implemented yet! Sorry!"),
        ),
      ),
    );
  }
}
