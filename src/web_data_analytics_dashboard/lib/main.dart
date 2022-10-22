import 'package:flutter/cupertino.dart';
import 'package:web_data_analytics_dashboard/dashboard_header.dart';
import 'package:web_data_analytics_dashboard/dashboard_tiles.dart';
import 'package:web_data_analytics_dashboard/header.dart';

void main() => runApp(const DashboardApp());

class DashboardApp extends StatelessWidget {
  const DashboardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(brightness: Brightness.light),
      home: DashboardContainer(),
    );
  }
}

class DashboardContainer extends StatefulWidget {
  const DashboardContainer({super.key});

  @override
  State<DashboardContainer> createState() => _DashboardContainerState();
}

class _DashboardContainerState extends State<DashboardContainer> {
  void _updateState() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [Header(), DashboardHeader(), DashboardTiles()]),
    );
  }
}
