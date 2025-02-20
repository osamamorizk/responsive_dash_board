import 'package:flutter/material.dart';
import 'package:responsive_ui_app/features/responsive_dashboard/presentation/views/widgets/all_expensess.dart';
import 'package:responsive_ui_app/features/responsive_dashboard/presentation/views/widgets/income_section.dart';
import 'package:responsive_ui_app/features/responsive_dashboard/presentation/views/widgets/my_cards_and_transiction_section.dart';
import 'package:responsive_ui_app/features/responsive_dashboard/presentation/views/widgets/quik_invoice.dart';

class MobileDashboardLayout extends StatelessWidget {
  const MobileDashboardLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AllExpensess(),
          SizedBox(height: 24),
          QuikInvoice(),
          SizedBox(height: 24),
          MyCardsAndTransctionHistorySection(),
          SizedBox(height: 24),
          IncomeSection(),
          SizedBox(height: 24),
        ],
      ),
    );
  }
}
