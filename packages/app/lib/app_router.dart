import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:feature_dashboard/feature_dashboard.dart';
import 'package:feature_feed/feature_feed.dart';
import 'package:feature_bookmark/feature_bookmark.dart';
import 'package:feature_profile/feature_profile.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: RouteName.dashboardRoute,
          page: DashboardRoute.page,
          initial: true,
          children: [
            AutoRoute(
              path: RouteName.feedRoute,
              page: FeedRoute.page,
            ),
            AutoRoute(
              path: RouteName.bookmarkRoute,
              page: BookmarkRoute.page,
            ),
            AutoRoute(
              path: RouteName.profileRoute,
              page: ProfileRoute.page,
            ),
          ],
        ),
      ];
}
