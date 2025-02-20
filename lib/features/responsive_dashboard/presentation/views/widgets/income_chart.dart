import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int? currentIndex;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getPieChartData()));
  }

  PieChartData getPieChartData() {
    return PieChartData(
      sectionsSpace: 0,
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, piTouchResponse) {
          currentIndex =
              piTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sections: [
        PieChartSectionData(
          value: 40,
          color: Color(0xff208CC8),
          showTitle: false,
          radius: currentIndex == 0 ? 60 : 50,
        ),
        PieChartSectionData(
          value: 25,
          color: Color(0xff4EB7F2),
          showTitle: false,
          radius: currentIndex == 1 ? 60 : 50,
        ),
        PieChartSectionData(
          value: 20,
          color: Color(0xff064061),
          showTitle: false,
          radius: currentIndex == 2 ? 60 : 50,
        ),
        PieChartSectionData(
          value: 22,
          color: Color(0xffE2DECD),
          showTitle: false,
          radius: currentIndex == 3 ? 60 : 50,
        ),
      ],
    );
  }
}
