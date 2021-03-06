import 'package:cash_rich/app/modules/graph/views/graph_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/listing_controller.dart';

class ListingView extends GetView<ListingController> {
  String? any;
  int? counts;

   ListingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.coin_list();
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text('CoinRich'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.to(GraphView());
                  },
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * .05,
                    width: MediaQuery.of(context).size.width * .4,
                    child: Row(
                      children: const [
                        SizedBox(
                          width: 15,
                        ),
                        Icon(
                          Icons.pie_chart,
                          color: Colors.yellow,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Show Chart',
                          style: TextStyle(fontSize: 14, color: Colors.yellow),
                        ),
                      ],
                    ),
                  ),
                ),
                 Text(
                  "Count: 3 ",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
                height: MediaQuery.of(context).size.height * .835,
                width: MediaQuery.of(context).size.width,
                child: controller.obx((enq) {
                  return ListView.builder(
                      itemCount: enq['data'].length,
                      itemBuilder: (context, index) {
                        any = index == 0? 'BTC': index == 1 ? 'ETH': 'LTC';
                        return GestureDetector(
                          onTap: () {
                            any = index == 0? 'BTC': index == 1 ? 'ETH': 'LTC';
                            Get.bottomSheet(
                              Container(
                                padding:
                                    const EdgeInsets.only(top: 10, left: 9, right: 9),
                                height:
                                    MediaQuery.of(context).size.height * .430,
                                decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15),
                                    ),
                                    color: Colors.white),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                     Center(
                                        child: Text(
                                          '${enq['data'][any]['name']}',
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    )),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    const Text(
                                      'Tags',
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 7,
                                    ),
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: [
                                          Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                .04,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                .2,
                                            margin: const EdgeInsets.only(left: 5),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Colors.grey[800],
                                            ),
                                            alignment: Alignment.center,
                                            child: const Text('Mineable',
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.black,
                                                )),
                                          ),
                                          Container(
                                            alignment: Alignment.center,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                .04,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                .2,
                                            margin: const EdgeInsets.only(left: 5),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Colors.grey[800],
                                            ),
                                          ),
                                          Container(
                                            alignment: Alignment.center,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                .04,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                .2,
                                            margin: const EdgeInsets.only(left: 5),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Colors.grey[800],
                                            ),
                                          ),
                                          Container(
                                            alignment: Alignment.center,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                .04,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                .2,
                                            margin: const EdgeInsets.only(left: 5),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Colors.grey[800],
                                            ),
                                          ),
                                          Container(
                                            alignment: Alignment.center,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                .04,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                .2,
                                            margin: const EdgeInsets.only(left: 5),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Colors.grey[800],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 25,
                                    ),
                                    const Text(
                                      'Price Last Updated',
                                      style:  TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                     Text(
                                        '${enq['data'][any]['last_updated']}',
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.green),
                                    ),
                                    const SizedBox(
                                      height: 30,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Container(
                                        alignment: Alignment.center,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                .07,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                .9,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          color: Colors.yellow,
                                        ),
                                        child: const Text(
                                          'Close',
                                          style:  TextStyle(
                                              fontSize: 25,
                                              color: Colors.black),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                          child: Container(
                            margin: const EdgeInsets.only(top: 15),
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            height: MediaQuery.of(context).size.height * .12,
                            width: MediaQuery.of(context).size.width * .95,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black,
                            ),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '${enq['data'][any]['name']}',
                                      style: const TextStyle(
                                          fontSize: 20, color: Colors.yellow),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              .05,
                                      width: MediaQuery.of(context).size.width *
                                          .4,
                                      child: Row(
                                        children:  [
                                          SizedBox(
                                            width: 25,
                                          ),
                                          Icon(
                                            Icons.arrow_upward,
                                            color: Colors.green,
                                          ),
                                          SizedBox(
                                            width: 7,
                                          ),
                                          Text(
                                            '${enq['data'][any]['quote']['USD']['percent_change_60d']}'.toString(),
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.grey),
                                          ),
                                        ],
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Get.to(ListingView());
                                      },
                                      child: Container(
                                        alignment: Alignment.center,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                .03,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                .2,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.grey[800],
                                        ),
                                        child:  Text(
                                          '${enq['data'][any]['symbol']}',
                                          style: const TextStyle(
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      alignment: Alignment.center,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              .07,
                                      width: MediaQuery.of(context).size.width *
                                          .25,
                                      //color: Colors.red,
                                      child:  Text(
                                        "Price \$${enq['data'][any]['quote']['USD']['price']}",
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.grey),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              .05,
                                      width: MediaQuery.of(context).size.width *
                                          .2,
                                      //color: Colors.red,
                                      child:  Text(
                                        "Rank     ${enq['data'][any]['cmc_rank']}",
                                        style:  TextStyle(
                                            fontSize: 15, color: Colors.grey),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    GestureDetector(
                                        onTap: () {
                                          Get.to(ListingView());
                                        },
                                        child: const CircleAvatar(
                                          radius: 16,
                                          backgroundColor: Colors.yellow,
                                          child: Icon(
                                            Icons.keyboard_arrow_right_rounded,
                                            color: Colors.black,
                                          ),
                                        )),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      });
                }))
          ],
        ));
  }
}
