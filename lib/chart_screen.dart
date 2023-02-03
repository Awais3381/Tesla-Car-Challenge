import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:tesla_carapp/chart_model.dart';

class ChartsScreen extends StatefulWidget {

  @override
  _ChartsScreenState createState() => _ChartsScreenState();
}

class _ChartsScreenState extends State<ChartsScreen> {
  @override
  Widget build(BuildContext context) {

    final List<EarningsTimeline> listEarnings = [
      EarningsTimeline(year: "08", earning: 18.5,color: Colors.green),
      EarningsTimeline(year: "10", earning: 23.5,color: Colors.blue),
      EarningsTimeline(year: "20", earning: 44.5,color: Colors.red),
      EarningsTimeline(year: "38", earning: 100.5,color: Colors.yellow),
      EarningsTimeline(year: "48", earning: 135.5,color: Colors.purple),
      EarningsTimeline(year: "58", earning: 150.5,color: Colors.pink),
      EarningsTimeline(year: "68", earning: 120.5,color: Colors.orange),
    ];

    List<charts.Series<EarningsTimeline, String>> timeline = [
      charts.Series(
        id: "Subscribers",
        data: listEarnings,
        colorFn: (EarningsTimeline timeline, _) => charts.ColorUtil.fromDartColor(timeline.color),
        domainFn: (EarningsTimeline timeline, _) => timeline.year,
        measureFn: (EarningsTimeline timeline, _) => timeline.earning,
      )
    ];

    return Container(
            height: 320,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10)
            ),
            padding: EdgeInsets.all(10),
            child: Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Text(
                      "Fuel Per Month",style: TextStyle(fontSize: 18),
                    ),
                    Expanded(
                      child: charts.BarChart(timeline, animate: true),
                    ),
                  ],
                ),
              ),
            ),
          );
  }
}