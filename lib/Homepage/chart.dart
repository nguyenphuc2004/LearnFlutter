
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
class chart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 428,
      height: 286,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        children: [
          Column(
            children: [
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
              Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 18),
                    child:
                    Text('Lượng tiêu thụ 6 kỳ gần nhất (m3)',
                        style: TextStyle(
                          fontSize: 11,
                        )),
                  )),
              SizedBox(height: 10),
              Expanded(
                  child: Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 16),
                    child: BarChart(
                      BarChartData(
                        alignment: BarChartAlignment.spaceAround,
                        maxY: 6,
                        barGroups: [
                          BarChartGroupData(
                            x: 0,
                            barRods: [
                              BarChartRodData(
                                  toY: 3,
                                  color: Colors.blue,
                                  width: 16),
                            ],
                          ),
                          BarChartGroupData(
                            x: 1,
                            barRods: [
                              BarChartRodData(
                                  toY: 1,
                                  color: Colors.blue,
                                  width: 16),
                            ],
                          ),
                          BarChartGroupData(
                            x: 2,
                            barRods: [
                              BarChartRodData(
                                  toY: 4,
                                  color: Colors.blue,
                                  width: 16),
                            ],
                          ),
                          BarChartGroupData(
                            x: 3,
                            barRods: [
                              BarChartRodData(
                                  toY: 1.5,
                                  color: Colors.blue,
                                  width: 16),
                            ],
                          ),
                          BarChartGroupData(
                            x: 4,
                            barRods: [
                              BarChartRodData(
                                  toY: 5,
                                  color: Colors.blue,
                                  width: 16),
                            ],
                          ),
                          BarChartGroupData(
                            x: 5,
                            barRods: [
                              BarChartRodData(
                                  toY: 2,
                                  color: Colors.blue,
                                  width: 16),
                            ],
                          ),
                        ],
                        titlesData: FlTitlesData(
                          bottomTitles: AxisTitles(
                            sideTitles: SideTitles(
                              showTitles: true,
                              getTitlesWidget: (value, meta) {
                                switch (value.toInt()) {
                                  case 0:
                                    return Text('Kỳ 1',
                                        style:
                                        TextStyle(fontSize: 12));
                                  case 1:
                                    return Text('Kỳ 2',
                                        style:
                                        TextStyle(fontSize: 12));
                                  case 2:
                                    return Text('Kỳ 3',
                                        style:
                                        TextStyle(fontSize: 12));
                                  case 3:
                                    return Text('Kỳ 4',
                                        style:
                                        TextStyle(fontSize: 12));
                                  case 4:
                                    return Text('Kỳ 5',
                                        style:
                                        TextStyle(fontSize: 12));
                                  case 5:
                                    return Text('Kỳ 6',
                                        style:
                                        TextStyle(fontSize: 12));
                                }
                                return Container();
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                  ))
            ],
          )
        ],
      ),
    );
  }

}