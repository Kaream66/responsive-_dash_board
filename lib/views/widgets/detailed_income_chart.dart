import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() =>
      _DetailedIncomeChartState();
}

class _DetailedIncomeChartState
    extends State<DetailedIncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(getChartData()),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, PieTouchResponse) {
          activeIndex =
              PieTouchResponse
                  ?.touchedSection
                  ?.touchedSectionIndex ??
              -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          titlePositionPercentageOffset:
              activeIndex == 0 ? 1.19 : null,
          value: 40,
          radius: activeIndex == 0 ? 60 : 50,
          title: activeIndex == 0 ? 'Design Service' : '40%',
          titleStyle: AppStyles.styleMedium16(context).copyWith(
            color: activeIndex == 0 ? null : Colors.white,
          ),
          color: Color(0xff208CC8),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset:
              activeIndex == 1 ? 1.20 : null,
          value: 25,
          radius: activeIndex == 1 ? 60 : 50,
          title: activeIndex == 1 ? 'Design Product' : '25%',
          titleStyle: AppStyles.styleMedium16(context).copyWith(
            color: activeIndex == 1 ? null : Colors.white,
          ),
          color: Color(0xff4EB7F2),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset:
              activeIndex == 2 ? 1.15 : null,
          value: 20,
          radius: activeIndex == 2 ? 60 : 50,
          title: activeIndex == 2 ? 'Product royalti' : '20%',
          titleStyle: AppStyles.styleMedium16(context).copyWith(
            color: activeIndex == 2 ? null : Colors.white,
          ),
          color: Color(0xff064061),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset:
              activeIndex == 3 ? 1 : null,
          value: 15,
          radius: activeIndex == 3 ? 60 : 50,
          title: activeIndex == 3 ? 'Othres' : '15%',
          titleStyle: AppStyles.styleMedium16(context).copyWith(
            color: activeIndex == 3 ? null : Colors.white,
          ),
          color: Color(0xffE2DECD),
        ),
      ],
    );
  }
}
