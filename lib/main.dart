import 'package:flutter/material.dart';
import 'package:test1/core/utilities/routers.dart';
import 'package:test1/core/utilities/strings.dart';

import 'core/utilities/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.appName,
      onGenerateRoute: onGenerate,
      initialRoute: AppRoutes.splash,
    );
  }
}
