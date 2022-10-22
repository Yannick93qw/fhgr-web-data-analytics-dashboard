import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:mrx_charts/mrx_charts.dart';

class DashboardLineChartTile extends StatefulWidget {
  const DashboardLineChartTile({super.key});

  @override
  State<DashboardLineChartTile> createState() => _DashboardLineChartTileState();
}

class _DashboardLineChartTileState extends State<DashboardLineChartTile> {
  List<ChartLayer> _layers() {
    final from = DateTime(2021, 4);
    final to = DateTime(2021, 8);
    final frequency =
        (to.millisecondsSinceEpoch - from.millisecondsSinceEpoch) / 3.0;
    return [
      ChartHighlightLayer(
        shape: () => ChartHighlightLineShape<ChartLineDataItem>(
          backgroundColor: const Color(0xFF331B6D),
          currentPos: (item) => item.currentValuePos,
          radius: const BorderRadius.all(Radius.circular(8.0)),
          width: 60.0,
        ),
      ),
      ChartAxisLayer(
        settings: ChartAxisSettings(
          x: ChartAxisSettingsAxis(
            frequency: frequency,
            max: to.millisecondsSinceEpoch.toDouble(),
            min: from.millisecondsSinceEpoch.toDouble(),
            textStyle: TextStyle(
              color: CupertinoColors.black.withOpacity(0.5),
              fontSize: 12.0,
            ),
          ),
          y: ChartAxisSettingsAxis(
            frequency: 100.0,
            max: 400.0,
            min: 0.0,
            textStyle: TextStyle(
              color: CupertinoColors.black.withOpacity(0.5),
              fontSize: 12.0,
            ),
          ),
        ),
        labelX: (value) => DateFormat('MMM')
            .format(DateTime.fromMillisecondsSinceEpoch(value.toInt())),
        labelY: (value) => value.toInt().toString(),
      ),
      ChartLineLayer(
        items: List.generate(
          4,
          (index) => ChartLineDataItem(
            x: (index * frequency) + from.millisecondsSinceEpoch,
            value: Random().nextInt(380) + 20,
          ),
        ),
        settings: const ChartLineSettings(
          color: CupertinoColors.black,
          thickness: 4.0,
        ),
      ),
      ChartTooltipLayer(
        shape: () => ChartTooltipLineShape<ChartLineDataItem>(
          backgroundColor: CupertinoColors.black,
          circleBackgroundColor: CupertinoColors.black,
          circleBorderColor: const Color(0xFF331B6D),
          circleSize: 4.0,
          circleBorderThickness: 2.0,
          currentPos: (item) => item.currentValuePos,
          onTextValue: (item) => '€${item.value.toString()}',
          marginBottom: 6.0,
          padding: const EdgeInsets.symmetric(
            horizontal: 12.0,
            vertical: 8.0,
          ),
          radius: 6.0,
          textStyle: const TextStyle(
            color: Color.fromARGB(255, 153, 149, 163),
            letterSpacing: 0.2,
            fontSize: 14.0,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    ];
  }

  void _updateState() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        border:
            Border.all(color: CupertinoColors.lightBackgroundGray, width: 1.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            decoration: const BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color: CupertinoColors.lightBackgroundGray,
                        width: 1.0))),
            child: const Text("Titel"),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Chart(
                    layers: _layers(),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 30.0).copyWith(
                      bottom: 12.0,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => _updateState(),
                    child: const Icon(
                      CupertinoIcons.refresh,
                      color: CupertinoColors.black,
                      size: 15.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
