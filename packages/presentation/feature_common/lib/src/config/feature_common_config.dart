import 'package:common/common.dart';

import 'di.dart' as di;

class FeatureCommonConfig extends Config {
  FeatureCommonConfig._();

  factory FeatureCommonConfig.getInstance() {
    return _instance;
  }

  static final FeatureCommonConfig _instance = FeatureCommonConfig._();

  @override
  Future<bool> config() async {
    await di.configureInjection();
    return Future.value(true);
  }
}
