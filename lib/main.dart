import 'package:bazar_app/core/services/cache_helper.dart';
import 'package:bazar_app/features/root/bazar_app.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  runApp(const BazarApp());
}
