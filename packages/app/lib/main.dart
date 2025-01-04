import 'package:app/app.dart';
import 'package:app/injector.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(
    MyApp(
      title: "Flutter Clean Starter",
    ),
  );
}
