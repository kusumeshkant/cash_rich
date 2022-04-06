import 'package:cash_rich/app/modules/graph/views/graph_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/listing_controller.dart';

class ListingView extends GetView<ListingController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('CoinRich'),
        centerTitle: true,
      ),
      body:Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: (){
                  Get.to(GraphView());
                },
                child: Container(
                  height: MediaQuery.of(context).size.height*.05,
                  width: MediaQuery.of(context).size.width*.4,
                  child: Row(
                    children: [
                      SizedBox(width: 15,),
                      Icon(Icons.pie_chart, color: Colors.yellow,),
                      SizedBox(width: 15,),
                      Text('Show Chart',
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
          SizedBox(height: 10,),
          Container(
            height: MediaQuery.of(context).size.height*.835,
            width: MediaQuery.of(context).size.width,
            child:ListView.builder(
              itemCount: 15,
                itemBuilder: (context, index){
                return GestureDetector(
                  onTap: (){
                    Get.bottomSheet(
                      Container(
                        padding: EdgeInsets.only(top: 10, left: 9, right: 9),
                        height: MediaQuery.of(context).size.height*.430,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                          ),
                          color: Colors.white
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(child: Text('Bit Coin',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold
                              ),)),
                            SizedBox(height: 20,),
                            Text('Tags',
                              style: TextStyle(
                                fontSize: 20,
                              ),),
                            SizedBox(height: 7,),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height*.04,
                                    width: MediaQuery.of(context).size.width*.2,
                                    margin: EdgeInsets.only(left: 5),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.grey[800],
                                    ),
                                    alignment: Alignment.center,
                                    child: Text('Mineable',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black,
                                        )),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    height: MediaQuery.of(context).size.height*.04,
                                    width: MediaQuery.of(context).size.width*.2,
                                    margin: EdgeInsets.only(left: 5),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.grey[800],
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    height: MediaQuery.of(context).size.height*.04,
                                    width: MediaQuery.of(context).size.width*.2,
                                    margin: EdgeInsets.only(left: 5),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.grey[800],
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    height: MediaQuery.of(context).size.height*.04,
                                    width: MediaQuery.of(context).size.width*.2,
                                    margin: EdgeInsets.only(left: 5),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.grey[800],
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    height: MediaQuery.of(context).size.height*.04,
                                    width: MediaQuery.of(context).size.width*.2,
                                    margin: EdgeInsets.only(left: 5),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.grey[800],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 25,),
                            Text('Price Last Updated',
                              style: TextStyle(
                                fontSize: 20,
                              ),),
                            SizedBox(height: 20,),
                            Text('15-03-2022  3:30 pm',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.green
                            ),),
                            SizedBox(height: 30,),
                            GestureDetector(
                              onTap: (){},
                              child: Container(
                                alignment: Alignment.center,
                                height: MediaQuery.of(context).size.height*.07,
                                width: MediaQuery.of(context).size.width*.9,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.yellow,
                                ),
                                child: Text('Close',
                                 style: TextStyle(
                                   fontSize: 25,
                                   color: Colors.black
                                 ),),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 15),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: MediaQuery.of(context).size.height*.1,
                    width: MediaQuery.of(context).size.width*.95,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Count: 5",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.yellow
                              ),),
                            Container(
                              height: MediaQuery.of(context).size.height*.05,
                              width: MediaQuery.of(context).size.width*.4,
                              child: Row(
                                children: [
                                  SizedBox(width: 15,),
                                  Icon(Icons.arrow_upward, color: Colors.green,),
                                  SizedBox(width: 7,),
                                  Text('Show Chart',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey

                                    ),),
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: (){
                                Get.to(ListingView());
                              },
                              child: Container(
                                alignment: Alignment.center,
                                height: MediaQuery.of(context).size.height*.03,
                                width: MediaQuery.of(context).size.width*.2,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey[800],
                                ),
                                child: Text('ADA',
                                  style: TextStyle(
                                    fontSize: 15,

                                  ),),
                              ),
                            ),

                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              height: MediaQuery.of(context).size.height*.05,
                              width: MediaQuery.of(context).size.width*.2,
                              //color: Colors.red,
                              child: Text("Price   108",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey
                                ),),
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: MediaQuery.of(context).size.height*.05,
                              width: MediaQuery.of(context).size.width*.2,
                              //color: Colors.red,
                              child: Text("Price     108",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey
                                ),),
                            ),
                            SizedBox(width: 5,),

                            GestureDetector(
                              onTap: (){
                                Get.to(ListingView());
                              },
                              child: CircleAvatar(
                                radius: 16,
                                backgroundColor: Colors.yellow,
                                child: Icon(Icons.keyboard_arrow_right_rounded, color: Colors.black,),
                              )
                            ),

                          ],
                        ),
                      ],
                    ),
                  ),
                );
                }),
          )

        ],
      )
    );
  }
}
