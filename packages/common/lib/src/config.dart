import 'package:async/async.dart';

abstract class Config {
  final _asyncMemoizer = AsyncMemoizer<bool>();
  
  Future<bool> config();
  Future<bool> init() => _asyncMemoizer.runOnce(() => config());
} 