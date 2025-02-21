import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsive_ui_app/features/responsive_dashboard/presentation/views/responsive_dashboard_view.dart';

void main() {
  runApp(
    DevicePreview(
        enabled: true, builder: (context) => const ResponsiveAppExample()),
  );
}

class ResponsiveAppExample extends StatelessWidget {
  const ResponsiveAppExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: ResponsiveDashboardView(),
    );
  }
}
