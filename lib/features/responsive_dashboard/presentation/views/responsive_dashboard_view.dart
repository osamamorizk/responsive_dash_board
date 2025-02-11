import 'package:flutter/material.dart';
import 'package:responsive_ui_app/core/widgets/adaptive_layout.dart';
import 'package:responsive_ui_app/features/responsive_dashboard/presentation/views/widgets/desktop_dashboard.dart';

class ResponsiveDashboardView extends StatelessWidget {
  const ResponsiveDashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
      mobileLayout: (context) => SizedBox(),
      tabletLayout: (context) => SizedBox(),
      desktopLayout: (context) => DesktopDashboard(),
    );
  }
}
