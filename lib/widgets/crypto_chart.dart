import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CryptoChart extends StatelessWidget {
  const CryptoChart({super.key});

  @override
  Widget build(BuildContext context) {
    final chartRodData = [
      [25.0, 100.0],
      [0.0, 100.0],
      [75.0, 125.0],
      [25.0, 100.0],
      [75.0, 150.0],
      [100.0, 125.0],
      [115.0, 150.0],
      [75.0, 125.0],
      [25.0, 100.0],
      [50.0, 125.0],
    ];
    return AspectRatio(
      aspectRatio: 1.3,
      child: BarChart(
        BarChartData(
          maxY: 150,
          borderData: FlBorderData(show: false),

          // * NUMBERS ON THE SIDE
          titlesData: FlTitlesData(
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                reservedSize: 40,
                showTitles: true,
                interval: 25,
                getTitlesWidget: (value, meta) {
                  return Text(
                    value.toInt().toString(),
                    style: TextStyle(color: Colors.white),
                  );
                },
              ),
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                interval: 1,
                getTitlesWidget: (value, meta) {
                  return Text(
                    value.toInt().toString(),
                    style: TextStyle(color: Colors.white),
                  );
                },
              ),
            ),
          ),

          // * GRID
          gridData: FlGridData(
            show: true,
            drawHorizontalLine: true,
            drawVerticalLine: true,
            verticalInterval: 25,
            getDrawingVerticalLine: (value) {
              return FlLine(
                color: Colors.white,
                strokeWidth: 2,
                dashArray: null, // solid line
              );
            },
            getDrawingHorizontalLine: (value) {
              return FlLine(
                color: Colors.white.withOpacity(0.4),
                strokeWidth: 1,
                dashArray: null,
              );
            },
          ),

          // * BARS
          barGroups: [
            for (int i = 0; i < chartRodData.length; i++)
              BarChartGroupData(
                barsSpace: 21,
                x: i,
                barRods: [
                  BarChartRodData(
                    fromY: chartRodData[i][0],
                    toY: chartRodData[i][1],
                    gradient: LinearGradient(
                      colors: [Color(0xFFEB87FF), Color(0xFF450249)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
