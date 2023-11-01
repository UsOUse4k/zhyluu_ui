import 'package:flutter/material.dart';
import 'package:zhyluu_ui/router.dart';

class ZhyluuUiApp extends StatelessWidget {
  const ZhyluuUiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: routerConfig,
    );
  }
}
