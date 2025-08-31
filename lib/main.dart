import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/routes/pages.dart';
import 'package:quiz_app/routes/routes.dart';
import 'package:quiz_app/services/SQL/database_helper.dart';

import 'core/theme/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DatabaseHelper().database;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      initialRoute: Routes.HOME_PAGE,
      getPages: Pages.pages,
    );
  }
}
