import 'package:ecommerce_app/features/authentication/screens/onboarding/onboarding_screen.dart';
import 'package:ecommerce_app/utils/bindings/general_bindings.dart';
import 'package:ecommerce_app/utils/constants/app_colors.dart';
import 'package:ecommerce_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.dartTheme,
      initialBinding: GeneralBindings(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: const SizedBox.shrink(),
      ),
    );
  }
}
