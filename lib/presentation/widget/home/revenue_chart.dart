import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'package:forkobo_merchant/utils/app_colors.dart';

class RevenueChart extends StatelessWidget {
  const RevenueChart({super.key, required this.dataPoints, required this.labels});

  final List<double> dataPoints;
  final List<String> labels;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 220, child: LineChart(_buildChartData(context)));
  }

  LineChartData _buildChartData(BuildContext context) {
    final TextStyle tooltipStyle =
        Theme.of(context).textTheme.bodyMedium?.copyWith(
          color: AppColors.white,
          fontWeight: FontWeight.bold,
        ) ??
        const TextStyle(
          color: AppColors.white,
          fontWeight: FontWeight.bold,
          fontSize: 14,
        );

    final List<FlSpot> spots = List<FlSpot>.generate(
      dataPoints.length,
      (int i) => FlSpot(i.toDouble(), dataPoints[i].toDouble()),
    );

    final double maxY = dataPoints.isEmpty
        ? 10000
        : (dataPoints.reduce((a, b) => a > b ? a : b) * 1.2);

    return LineChartData(
      gridData: FlGridData(
        show: true,
        drawVerticalLine: false,
        horizontalInterval: 2000,
        getDrawingHorizontalLine: (double value) =>
            FlLine(color: AppColors.borderColor, strokeWidth: 1),
      ),
      titlesData: FlTitlesData(
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 40,
            getTitlesWidget: (double value, TitleMeta meta) {
              if (value % 2000 != 0) return const SizedBox.shrink();
              return Text(
                '${(value / 1000).toInt()}K',
                style: const TextStyle(
                  color: AppColors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                ),
              );
            },
          ),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
            // Optionally: could map labels here if desired
          ),
        ),
      ),
      borderData: FlBorderData(show: false),
      minX: 0,
      maxX: (dataPoints.length - 1).toDouble(),
      minY: 0,
      maxY: maxY,
      lineBarsData: <LineChartBarData>[
        LineChartBarData(
          spots: spots,
          isCurved: true,
          color: const Color(0xFFFF6B6B),
          barWidth: 4,
          isStrokeCapRound: true,
          belowBarData: BarAreaData(show: false),
          dotData: FlDotData(
            show: true,
            getDotPainter:
                (
                  FlSpot spot,
                  double percent,
                  LineChartBarData barData,
                  int index,
                ) {
                  if (index == 4 && spots.length > 4) {
                    return FlDotCirclePainter(
                      radius: 5,
                      color: AppColors.white,
                      strokeColor: const Color(0xFFFF6B6B),
                      strokeWidth: 2,
                    );
                  }
                  return FlDotCirclePainter(
                    radius: 0,
                    color: Colors.transparent,
                  );
                },
          ),
        ),
      ],
      lineTouchData: LineTouchData(
        enabled: true,
        touchTooltipData: LineTouchTooltipData(
          tooltipBgColor: const Color(0xFFFF6B6B),
          getTooltipItems: (List<LineBarSpot> touchedSpots) {
            return touchedSpots.map((LineBarSpot spot) {
              final value = spot.y;
              return LineTooltipItem('\$${value.toStringAsFixed(2)}', tooltipStyle);
            }).toList();
          },
        ),
      ),
    );
  }
}
