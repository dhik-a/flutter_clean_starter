import 'package:common/common.dart';

import 'di.dart' as di;

class DataPostConfig extends Config {
  DataPostConfig._();

  factory DataPostConfig.getInstance() {
    return _instance;
  }

  static final DataPostConfig _instance = DataPostConfig._();

  @override
  Future<bool> config() async {
    await di.configureInjection();
    return Future.value(true);
  }
}
