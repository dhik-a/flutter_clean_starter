import 'package:common/common.dart';

import 'di.dart' as di;

class FeatureBookmarkConfig extends Config {
  FeatureBookmarkConfig._();

  factory FeatureBookmarkConfig.getInstance() {
    return _instance;
  }

  static final FeatureBookmarkConfig _instance = FeatureBookmarkConfig._();

  @override
  Future<bool> config() async {
    await di.configureInjection();
    return Future.value(true);
  }
}
