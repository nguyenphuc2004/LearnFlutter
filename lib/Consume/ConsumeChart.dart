import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:te/Homepage/chart.dart';
import 'package:te/Homepage/infoUser.dart';
import 'package:te/appbar/AppBarCommon.dart';
import 'package:te/appbar/AppBarTuLam.dart';

class ConsumeChart extends StatelessWidget {
  const ConsumeChart({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          Appbartulam('Biểu đồ tiêu thụ'),
          Column(
            children: [
              infoUser(),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 18, top: 10),
                  child: Text(
                    'Biểu đồ sử dụng nước',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF0062B6)),
                  ),
                ),
              ),
              SizedBox(
                height: 300, // Giới hạn chiều cao của biểu đồ
                child: Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: LineChart(
                    LineChartData(
                      gridData: FlGridData(
                        show: true,
                        drawHorizontalLine: true,
                        horizontalInterval: 1.0,
                        getDrawingHorizontalLine: (value) {
                          return FlLine(
                            color: Colors.grey.withOpacity(0.2),
                            strokeWidth: 1,
                          );
                        },
                      ),
                      titlesData: FlTitlesData(
                        leftTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            reservedSize: 28,
                            getTitlesWidget: (value, meta) {
                              return Text('${value.toInt()} m³',
                                  style: TextStyle(fontSize: 10));
                            },
                          ),
                        ),
                        bottomTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            reservedSize: 22,
                            getTitlesWidget: (value, meta) {
                              switch (value.toInt()) {
                                case 0:
                                  return Text('Kỳ 1',
                                      style: TextStyle(fontSize: 12));
                                case 1:
                                  return Text('Kỳ 2',
                                      style: TextStyle(fontSize: 12));
                                case 2:
                                  return Text('Kỳ 3',
                                      style: TextStyle(fontSize: 12));
                                case 3:
                                  return Text('Kỳ 4',
                                      style: TextStyle(fontSize: 12));
                                case 4:
                                  return Text('Kỳ 5',
                                      style: TextStyle(fontSize: 12));
                                case 5:
                                  return Text('Kỳ 6',
                                      style: TextStyle(fontSize: 12));
                              }
                              return Container();
                            },
                          ),
                        ),
                      ),
                      borderData: FlBorderData(
                        show: true,
                        border: Border.all(
                          color: Colors.grey.withOpacity(0.3),
                        ),
                      ),
                      minX: 0,
                      maxX: 5,
                      minY: 0,
                      maxY: 6,
                      lineBarsData: [
                        LineChartBarData(
                          spots: [
                            FlSpot(0, 3),
                            FlSpot(1, 1),
                            FlSpot(2, 4),
                            FlSpot(3, 1.5),
                            FlSpot(4, 5),
                            FlSpot(5, 2),
                          ],
                          isCurved: true,
                          color: Colors.blue,
                          barWidth: 4,
                          belowBarData: BarAreaData(
                            show: true,
                            color: Colors.blue.withOpacity(0.2),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

            ],
          )
        ],
      ),
    ));
  }
}
