import 'package:common/common.dart';

import 'di.dart' as di;

class DataProfileConfig extends Config {
  DataProfileConfig._();

  factory DataProfileConfig.getInstance() {
    return _instance;
  }

  static final DataProfileConfig _instance = DataProfileConfig._();

  @override
  Future<bool> config() async {
    await di.configureInjection();
    return Future.value(true);
  }
}
