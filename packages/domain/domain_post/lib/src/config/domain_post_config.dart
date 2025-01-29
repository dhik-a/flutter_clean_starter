import 'package:common/common.dart';

import 'di.dart' as di;

class DomainPostConfig extends Config {
  DomainPostConfig._();

  factory DomainPostConfig.getInstance() {
    return _instance;
  }

  static final DomainPostConfig _instance = DomainPostConfig._();

  @override
  Future<bool> config() async {
    await di.configureInjection();
    return Future.value(true);
  }
}
