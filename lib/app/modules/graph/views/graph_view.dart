import 'package:cash_rich/app/modules/listing/views/listing_view.dart';
import 'package:flutter/material.dart' ;

import 'package:charts_flutter/flutter.dart'as chart;

import 'package:get/get.dart';

import '../controllers/graph_controller.dart';


class GraphView extends GetView<GraphController> {
  
  static final List<char> bar_charts = [
    char('BTC', Colors.red, 5),
    char('BCH', Colors.blue,4),
    char('ATOM', Colors.pink,3 ),
    char('ADA', Colors.grey,2 ),
    char('BNB', Colors.yellow, 1),
  ];
  
  @override
  Widget build(BuildContext context) {

    List<chart.Series<char, String>> series = [
      chart.Series(
        data:  bar_charts,
        id: "Chart",
        domainFn: (char pops, _)=>pops.name,
        colorFn: (char pops, _) => chart.ColorUtil.fromDartColor(pops.barColor),
        measureFn:(char pops, _)=>pops.coin,

      )
    ];

    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('GraphView'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: (){
                  Get.to(ListingView());
                },
                child: Container(
                  height: MediaQuery.of(context).size.height*.05,
                  width: MediaQuery.of(context).size.width*.4,
                  child: Row(
                    children: [
                      SizedBox(width: 15,),
                      Icon(Icons.menu_sharp, color: Colors.yellow,),
                      SizedBox(width: 15,),
                      Text('Show List',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.yellow
                        ),),
                    ],
                  ),
                ),
              ),
              Text("Count: 5",
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey
                ),)
            ],
          ),
          Container(
            margin: EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height*.6,
            color: Colors.white,
            child: chart.BarChart(series)
          ),
        ],
      )
    );
  }
}


class char{
  final String name;
  final Color barColor;
  final int  coin;

  char(this.name, this.barColor, this.coin);
}