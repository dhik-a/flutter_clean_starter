import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:feature_dashboard/feature_dashboard.dart';
import 'package:feature_feed/feature_feed.dart';

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
            ]),
      ];
}
