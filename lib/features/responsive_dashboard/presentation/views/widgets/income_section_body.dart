import 'package:flutter/material.dart';
import 'package:responsive_ui_app/core/helpers/size_config.dart';
import 'package:responsive_ui_app/features/responsive_dashboard/presentation/views/widgets/detailed_income_chart.dart';
import 'package:responsive_ui_app/features/responsive_dashboard/presentation/views/widgets/income_chart.dart';
import 'package:responsive_ui_app/features/responsive_dashboard/presentation/views/widgets/income_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width >= SizeConfig.desktop && width < 1750
        ? Expanded(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: DetailedIncomeChart(),
            ),
          )
        : Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: IncomeChart(),
              ),
              Expanded(
                flex: 2,
                child: IncomeDetails(),
              ),
            ],
          );
  }
}
