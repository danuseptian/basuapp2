import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class DiagramView extends StatelessWidget {
  const DiagramView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: const [
          Text(
            'Grouped Bar Chart',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(height: 10),
          GroupedBarChartSample(),
          SizedBox(height: 20),
          Text(
            'Pie Chart',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          // SizedBox(height: 10),
          PieChartSample(),
        ],
      ),
    );
  }
}

class GroupedBarChartSample extends StatelessWidget {
  const GroupedBarChartSample({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.5,
      child: BarChart(
        BarChartData(
          barGroups: [
            BarChartGroupData(x: 0, barRods: [
              BarChartRodData(toY: 5, color: Colors.blue),
              BarChartRodData(toY: 8, color: Colors.green),
            ]),
            BarChartGroupData(x: 1, barRods: [
              BarChartRodData(toY: 10, color: Colors.blue),
              BarChartRodData(toY: 14, color: Colors.green),
            ]),
            BarChartGroupData(x: 2, barRods: [
              BarChartRodData(toY: 8, color: Colors.blue),
              BarChartRodData(toY: 12, color: Colors.green),
            ]),
          ],
          titlesData: const FlTitlesData(show: false),
          borderData: FlBorderData(show: false),
          alignment: BarChartAlignment.center,
          maxY: 16,
        ),
      ),
    );
  }
}

class PieChartSample extends StatelessWidget {
  const PieChartSample({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.5,
      child: PieChart(
        PieChartData(
          sectionsSpace: 0,
          centerSpaceRadius: 40,
          sections: [
            PieChartSectionData(
              value: 40,
              color: Colors.blue,
              title: '40%',
              radius: 60,
              titleStyle:
                  const TextStyle(fontSize: 14, color: Color(0xffffffff)),
            ),
            PieChartSectionData(
              value: 30,
              color: Colors.green,
              title: '30%',
              radius: 50,
              titleStyle:
                  const TextStyle(fontSize: 14, color: Color(0xffffffff)),
            ),
            PieChartSectionData(
              value: 15,
              color: Colors.orange,
              title: '15%',
              radius: 40,
              titleStyle:
                  const TextStyle(fontSize: 14, color: Color(0xffffffff)),
            ),
            PieChartSectionData(
              value: 15,
              color: Colors.red,
              title: '15%',
              radius: 30,
              titleStyle:
                  const TextStyle(fontSize: 14, color: Color(0xffffffff)),
            ),
          ],
        ),
      ),
    );
  }
}
