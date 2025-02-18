import 'package:flutter/material.dart';
import 'package:responsive_ui_app/features/responsive_dashboard/presentation/views/widgets/all_expensess.dart';
import 'package:responsive_ui_app/features/responsive_dashboard/presentation/views/widgets/custom_drawer.dart';
import 'package:responsive_ui_app/features/responsive_dashboard/presentation/views/widgets/quik_invoice.dart';

class DesktopDashboard extends StatelessWidget {
  const DesktopDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF7F9FA),
      body: Row(
        children: [
          Expanded(
            child: CustomDrawer(),
          ),
          SizedBox(
            width: 32,
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                AllExpensess(),
                SizedBox(height: 24),
                QuikInvoice(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
