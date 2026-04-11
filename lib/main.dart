import 'package:flutter/material.dart';

import 'core/services/cache_helper.dart';
import 'features/root/bazar_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();

  runApp(const BazarApp());
}
