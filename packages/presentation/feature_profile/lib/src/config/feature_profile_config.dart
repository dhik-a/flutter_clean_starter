import 'package:common/common.dart';

import 'di.dart' as di;

class FeatureProfileConfig extends Config {
  FeatureProfileConfig._();

  factory FeatureProfileConfig.getInstance() {
    return _instance;
  }

  static final FeatureProfileConfig _instance = FeatureProfileConfig._();

  @override
  Future<bool> config() async {
    await di.configureInjection();
    return Future.value(true);
  }
}
