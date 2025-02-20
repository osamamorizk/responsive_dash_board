import 'package:flutter/material.dart';
import 'package:responsive_ui_app/core/widgets/adaptive_layout.dart';
import 'package:responsive_ui_app/features/responsive_dashboard/presentation/views/desktop_dashboard_view.dart';
import 'package:responsive_ui_app/features/responsive_dashboard/presentation/views/mobile_dashbourd_layout.dart';
import 'package:responsive_ui_app/features/responsive_dashboard/presentation/views/tablet_dashboard_view.dart';
import 'package:responsive_ui_app/features/responsive_dashboard/presentation/views/widgets/custom_drawer.dart';

class ResponsiveDashboardView extends StatefulWidget {
  const ResponsiveDashboardView({super.key});

  @override
  State<ResponsiveDashboardView> createState() =>
      _ResponsiveDashboardViewState();
}

class _ResponsiveDashboardViewState extends State<ResponsiveDashboardView> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      key: _key,
      appBar: MediaQuery.sizeOf(context).width < 800
          ? AppBar(
              backgroundColor: Color(0xffFAFAFA),
              leading: IconButton(
                onPressed: () {
                  _key.currentState!.openDrawer();
                },
                icon: Icon(Icons.menu),
              ),
            )
          : null,
      body: AdaptiveLayout(
        mobileLayout: (context) => MobileDashboardLayout(),
        tabletLayout: (context) => TabletDashboardView(),
        desktopLayout: (context) => DesktopDashboard(),
      ),
    );
  }
}
