import 'package:flutter/material.dart';
import 'package:responsive_ui_app/features/responsive_dashboard/presentation/views/responsive_dashboard_view.dart';

void main() {
  runApp(
    const ResponsiveAppExample(),
  );
}

class ResponsiveAppExample extends StatelessWidget {
  const ResponsiveAppExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveDashboardView(),
    );
  }
}
