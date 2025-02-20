import 'package:flutter/material.dart';
import 'package:responsive_ui_app/features/responsive_dashboard/presentation/views/mobile_dashbourd_layout.dart';
import 'package:responsive_ui_app/features/responsive_dashboard/presentation/views/widgets/custom_drawer.dart';

class TabletDashboardView extends StatelessWidget {
  const TabletDashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 3,
          child: MobileDashboardLayout(),
        ),
        SizedBox(
          width: 32,
        ),
      ],
    );
  }
}
