import 'package:flutter/cupertino.dart';

class DashboardHeader extends StatefulWidget {
  const DashboardHeader({super.key});

  @override
  State<DashboardHeader> createState() => _DashboardHeaderState();
}

class _DashboardHeaderState extends State<DashboardHeader> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Dashboard",
              style:
                  CupertinoTheme.of(context).textTheme.navLargeTitleTextStyle),
          const Text("10.10.2021 - 10.10.2022",
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14.0)),
        ],
      ),
    );
  }
}
