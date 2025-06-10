import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/adaptive_layaouts_widget.dart';
import 'package:responsive_dash_board/views/widgets/dashboard_desktop_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (context) => SizedBox(),
        tabletLayout: (context) => SizedBox(),
        desktopLayout:
            (context) => DashboardDesktopLayout(),
      ),
    );
  }
}
