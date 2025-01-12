import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:feature_bookmark/feature_bookmark.dart';
import 'package:feature_common/feature_common.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: BookmarkRouteProvider)
class BookmarkRouteProviderImpl implements BookmarkRouteProvider {
  @override
  PageRouteInfo route() {
    return BookmarkRoute();
  }
}

@RoutePage()
class BookmarkPage extends StatelessWidget {
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
