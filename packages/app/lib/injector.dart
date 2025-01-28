import 'package:data_post/data_post.dart';
import 'package:domain_post/domain_post.dart';
import 'package:feature_bookmark/feature_bookmark.dart';
import 'package:feature_common/feature_common.dart';
import 'package:feature_dashboard/feature_dashboard.dart';
import 'package:feature_feed/feature_feed.dart';
import 'package:feature_profile/feature_profile.dart';

Future<void> configureDependencies() async {
  // Data Dependency Injection
  DataPostConfig.getInstance().init();

  // Domain Dependency Injection
  DomainPostConfig.getInstance().init();

  // Feature Dependency Injection
  FeatureCommonConfig.getInstance().init();
  FeatureDashboardConfig.getInstance().init();
  FeatureFeedConfig.getInstance().init();
  FeatureBookmarkConfig.getInstance().init();
  FeatureProfileConfig.getInstance().init();
}
