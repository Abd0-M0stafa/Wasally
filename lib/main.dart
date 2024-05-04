import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wasally/core/themes/app_theme.dart';
import 'package:wasally/features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (context) => const Wasally(), // Wrap your app
    ),
  );
}

class Wasally extends StatelessWidget {
  const Wasally({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      textDirection: TextDirection.rtl,
      theme: AppTheme.appTheme,
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: const SplashView(),
    );
  }
}
