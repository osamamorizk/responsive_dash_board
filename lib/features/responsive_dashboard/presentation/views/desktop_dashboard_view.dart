import 'package:flutter/material.dart';
import 'package:responsive_ui_app/features/responsive_dashboard/presentation/views/widgets/custom_drawer.dart';

class DesktopDashboard extends StatelessWidget {
  const DesktopDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: CustomDrawer(),
          ),
        ],
      ),
    );
  }
}
