import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
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
          radius: activeIndex == 0 ? 40 : 30,
          showTitle: false,
          value: 40,
          color: Color(0xff208CC8),
        ),
        PieChartSectionData(
          radius: activeIndex == 1 ? 40 : 30,
          showTitle: false,
          value: 25,
          color: Color(0xff4EB7F2),
        ),
        PieChartSectionData(
          radius: activeIndex == 2 ? 40 : 30,
          showTitle: false,
          value: 20,
          color: Color(0xff064061),
        ),
        PieChartSectionData(
          radius: activeIndex == 3 ? 40 : 30,
          showTitle: false,
          value: 15,
          color: Color(0xffE2DECD),
        ),
      ],
    );
  }
}











// class IncomeChart extends StatelessWidget {
//   const IncomeChart({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return CustomPaint(
//       size: Size(200, 200),
//       painter: PieChartPainter(),
//     );
//   }
// }

// class PieChartPainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     final paint = Paint()..style = PaintingStyle.fill;

//     double startAngle = 0;
//     double sweepAngle =
//         90 * (3.14159 / 180); // 90 degrees in radians

//     // الألوان لكل جزء
//     List<Color> colors = [
//       Colors.red,
//       Colors.green,
//       Colors.blue,
//       Colors.yellow,
//     ];

//     for (int i = 0; i < 4; i++) {
//       paint.color = colors[i];
//       canvas.drawArc(
//         Rect.fromCircle(
//           center: Offset(size.width / 2, size.height / 2),
//           radius: size.width / 2,
//         ),
//         startAngle,
//         sweepAngle,
//         true,
//         paint,
//       );
//       startAngle += sweepAngle; // تحديث الزاوية للجزء التالي
//     }
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return false;
//   }
// }