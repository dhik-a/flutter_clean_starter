import 'package:common/common.dart';

import 'di.dart' as di;

class FeatureFeedConfig extends Config {
  FeatureFeedConfig._();

  factory FeatureFeedConfig.getInstance() {
    return _instance;
  }

  static final FeatureFeedConfig _instance = FeatureFeedConfig._();

  @override
  Future<bool> config() async {
    await di.configureInjection();
    return Future.value(true);
  }
}
