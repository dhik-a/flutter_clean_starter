import 'package:common/common.dart';

import 'di.dart' as di;

class DomainProfileConfig extends Config {
  DomainProfileConfig._();

  factory DomainProfileConfig.getInstance() {
    return _instance;
  }

  static final DomainProfileConfig _instance = DomainProfileConfig._();

  @override
  Future<bool> config() async {
    await di.configureInjection();
    return Future.value(true);
  }
}
