import 'package:flutter/cupertino.dart';
import 'package:web_data_analytics_dashboard/dashboard_line_chart_tile.dart';

class DashboardTiles extends StatelessWidget {
  const DashboardTiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.all(5.0),
      child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.only(right: 15.0),
          child: Wrap(
              spacing: 8,
              runSpacing: 12,
              children:
                  List.generate(4, (index) => const DashboardLineChartTile()))),
    ));
  }
}
