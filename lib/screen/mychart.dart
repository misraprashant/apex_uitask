import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class BarGraph extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BarChart(
          BarChartData(
            maxY: 20,
            minY: 0,
            gridData: FlGridData(show: false),
            titlesData: FlTitlesData(
              show: false,
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(showTitles: true),
              ),
            ),
            borderData: FlBorderData(show: false),
            barGroups: [
              BarChartGroupData(
                x: 0,
                barRods: [
                  BarChartRodData(
                    borderRadius: BorderRadius.circular(2),
                    toY: 8, color: Colors.grey.shade300,

                    width: 20, // Set the desired width here
                  ),
                ],
              ),
              BarChartGroupData(
                x: 1,
                barRods: [
                  BarChartRodData(
                    borderRadius: BorderRadius.circular(2),
                    toY: 10, color: Colors.grey.shade300,
                    width: 20, // Set the desired width here
                  ),
                ],
              ),
              BarChartGroupData(
                x: 2,
                barRods: [
                  BarChartRodData(
                    borderRadius: BorderRadius.circular(2),
                    toY: 20, color: Colors.blue,
                    width: 20, // Set the desired width here
                  ),
                ],
              ),
              BarChartGroupData(
                x: 3,
                barRods: [
                  BarChartRodData(
                    borderRadius: BorderRadius.circular(2),
                    toY: 7, color: Colors.grey.shade300,
                    width: 20, // Set the desired width here
                  ),
                ],
              ),
              BarChartGroupData(
                x: 4,
                barRods: [
                  BarChartRodData(
                      toY: 11,
                      width: 20, // Set the desired width here
                      borderRadius: BorderRadius.circular(2),
                      color: Colors.grey.shade300)
                ],
              ),
              BarChartGroupData(
                x: 5,
                barRods: [
                  BarChartRodData(
                      toY: 2,
                      width: 20, // Set the desired width here
                      borderRadius: BorderRadius.circular(2),
                      color: Colors.grey.shade300)
                ],
              ),
              BarChartGroupData(
                x: 6,
                barRods: [
                  BarChartRodData(
                      toY: 4,
                      width: 20,
                      borderRadius: BorderRadius.circular(2),
                      color: Colors.grey.shade300)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
