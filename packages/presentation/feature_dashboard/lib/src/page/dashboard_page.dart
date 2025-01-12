import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:feature_common/feature_common.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

@RoutePage()
class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: [
        GetIt.I.get<FeedRouteProvider>().route(),
        GetIt.I.get<BookmarkRouteProvider>().route(),
        GetIt.I.get<ProfileRouteProvider>().route(),
      ],
      transitionBuilder: (context, child, animation) => FadeTransition(
        opacity: animation,
        child: child,
      ),
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: (index) {
              tabsRouter.setActiveIndex(index);
            },
            items: [
              BottomNavigationBarItem(
                label: 'Feed',
                icon: Icon(
                  Icons.home_outlined,
                  color: Colors.black54,
                ),
                activeIcon: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
              ),
              BottomNavigationBarItem(
                label: 'Bookmark',
                icon: Icon(
                  Icons.bookmark_outline,
                ),
                activeIcon: Icon(
                  Icons.bookmark,
                  color: Colors.black,
                ),
              ),
              BottomNavigationBarItem(
                label: 'Profile',
                icon: Icon(
                  Icons.person_outline,
                ),
                activeIcon: Icon(
                  Icons.person,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
