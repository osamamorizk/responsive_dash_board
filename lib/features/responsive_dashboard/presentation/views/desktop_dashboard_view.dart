import 'package:flutter/material.dart';
import 'package:responsive_ui_app/features/responsive_dashboard/presentation/views/widgets/all_expensess.dart';
import 'package:responsive_ui_app/features/responsive_dashboard/presentation/views/widgets/custom_drawer.dart';
import 'package:responsive_ui_app/features/responsive_dashboard/presentation/views/widgets/income_section.dart';
import 'package:responsive_ui_app/features/responsive_dashboard/presentation/views/widgets/my_cards_and_transiction_section.dart';
import 'package:responsive_ui_app/features/responsive_dashboard/presentation/views/widgets/quik_invoice.dart';

class DesktopDashboard extends StatelessWidget {
  const DesktopDashboard({super.key});

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
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          SizedBox(height: 40),
                          AllExpensess(),
                          SizedBox(height: 24),
                          QuikInvoice(),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 32,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 40,
                          ),
                          MyCardsAndTransctionHistorySection(),
                          SizedBox(
                            height: 24,
                          ),
                          Expanded(
                            child: IncomeSection(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(
          width: 32,
        ),
      ],
    );
  }
}
