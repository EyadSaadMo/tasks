import 'package:flutter/material.dart';
import 'package:test1/core/utilities/routers.dart';
import '../../feature/splash/presentation/screens/splash_screen.dart';
import '../../feature/upload_image/upload_image_screen.dart';

Route<dynamic> onGenerate(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.splash:
      return MaterialPageRoute(builder: (context) => const SplashScreen());

    default:
      return MaterialPageRoute(builder: (context) => const UploadImage());
  }
}
