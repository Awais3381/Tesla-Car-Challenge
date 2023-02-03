import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:tesla_carapp/chart_model.dart';
import 'package:tesla_carapp/chart_screen.dart';

class Graph extends StatefulWidget {
  const Graph({Key? key}) : super(key: key);

  get data => null;

  @override
  State<Graph> createState() => _GraphState();
}

class _GraphState extends State<Graph> {
  late TooltipBehavior _tooltipBehavior;


  @override
  void initState(){
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: Container(
          color: Color(0xff1c1e22),
          child: Column(
            children: [
              SizedBox(
                height: 80,
              ),
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Container(
              //     height: 100,
              //       decoration: BoxDecoration(
              //           color: Colors.white,
              //         borderRadius: BorderRadius.circular(10)
              //       ),
              //       child: Padding(
              //         padding: const EdgeInsets.all(8.0),
              //         child: SfSparkLineChart(
              //           //Enable the trackball
              //           trackball: SparkChartTrackball(
              //               activationMode: SparkChartActivationMode.tap),
              //           //Enable marker
              //           marker: SparkChartMarker(
              //               displayMode: SparkChartMarkerDisplayMode.all,),
              //           //Enable data label
              //           labelDisplayMode: SparkChartLabelDisplayMode.all,
              //           data: <double>[
              //             1, 5, -6, 0, 1, -2, 7, -7, -4, 10
              //           ],
              //         ),
              //       )
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: SfCartesianChart(

                        primaryXAxis: CategoryAxis(),
                        // Chart title
                        title: ChartTitle(text: 'Kilometer Per Month'),
                        // Enable legend
                        legend: Legend(isVisible: true),
                        // Enable tooltip
                        tooltipBehavior: _tooltipBehavior,

                        series: <LineSeries<SalesData, String>>[
                          LineSeries<SalesData, String>(
                              dataSource:  <SalesData>[
                                SalesData('Jan', 500),
                                SalesData('Feb', 1200),
                                SalesData('Mar', 100),
                                SalesData('Apr', 400),
                                SalesData('May', 700),
                                SalesData('Jun', 230),
                              ],
                              xValueMapper: (SalesData sales, _) => sales.year,
                              yValueMapper: (SalesData sales, _) => sales.sales,
                              // Enable data label
                              dataLabelSettings: DataLabelSettings(isVisible: true)
                          )
                        ]
                    )
                ),
              ),
              ChartsScreen()
            ],
          ),
        )
    );
  }
}




class SalesData {
  SalesData(this.year, this.sales);
  final String year;
  final double sales;
}

