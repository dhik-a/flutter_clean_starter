import 'package:common/common.dart';

import 'di.dart' as di;

class FeatureDashboardConfig extends Config {
  FeatureDashboardConfig._();

  factory FeatureDashboardConfig.getInstance() {
    return _instance;
  }

  static final FeatureDashboardConfig _instance = FeatureDashboardConfig._();

  @override
  Future<bool> config() async {
    await di.configureInjection();
    return Future.value(true);
  }
}
