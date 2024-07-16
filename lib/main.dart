import 'package:flutter/material.dart';
import 'package:iouring_task/service_locator.dart';
import 'package:iouring_task/theme_config.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  ServiceLocator.setupLocator();
  runApp(MyApp());
}
