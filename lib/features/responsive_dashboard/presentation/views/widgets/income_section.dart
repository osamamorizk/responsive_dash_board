import 'package:flutter/material.dart';

import 'package:responsive_ui_app/features/responsive_dashboard/presentation/views/widgets/income_header.dart';
import 'package:responsive_ui_app/features/responsive_dashboard/presentation/views/widgets/income_section_body.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Column(
        children: [
          SizedBox(
            height: 24,
          ),
          IncomeHedear(),
          SizedBox(
            height: 24,
          ),
          IncomeSectionBody(),
        ],
      ),
    );
  }
}
