import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_ui_app/core/helpers/app_text_styles.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
  int? currentIndex;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getChartData()));
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, pietouchResponse) {
          currentIndex =
              pietouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          titlePositionPercentageOffset: currentIndex == 0 ? 1.5 : null,
          title: currentIndex == 0 ? 'Design service' : '40%',
          titleStyle: AppStyles.styleMedium16(context)
              .copyWith(color: currentIndex == 0 ? null : Colors.white),
          radius: currentIndex == 0 ? 60 : 50,
          value: 40,
          color: const Color(0xFF208BC7),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: currentIndex == 1 ? 2.2 : null,
          titleStyle: AppStyles.styleMedium16(context)
              .copyWith(color: currentIndex == 1 ? null : Colors.white),
          title: currentIndex == 1 ? 'Design product' : '25%',
          value: 25,
          radius: currentIndex == 1 ? 60 : 50,
          color: const Color(0xFF4DB7F2),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: currentIndex == 2 ? 1.4 : null,
          titleStyle: AppStyles.styleMedium16(context)
              .copyWith(color: currentIndex == 2 ? null : Colors.white),
          title: currentIndex == 2 ? 'Product royalti' : '20%',
          value: 20,
          radius: currentIndex == 2 ? 60 : 50,
          color: const Color(0xFF064060),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: currentIndex == 3 ? 1.4 : null,
          titleStyle: AppStyles.styleMedium16(context)
              .copyWith(color: currentIndex == 3 ? null : Colors.white),
          title: currentIndex == 3 ? 'Other' : '22%',
          value: 22,
          radius: currentIndex == 3 ? 60 : 50,
          color: const Color(0xFFE2DECD),
        ),
      ],
    );
  }
}
