import 'package:cash_rich/app/modules/listing/views/listing_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Coin Rich'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height*.05,
              width: MediaQuery.of(context).size.width*.7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black,
              ),
              child: Row(
                children: const [
                  SizedBox(width: 15,),
                  Icon(Icons.search, color: Colors.white,),
                  SizedBox(width: 15,),
                  Text('Enter Coin Symbol',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white

                    ),),
                ],
              ),
            ),
          ),
          SizedBox(height: 20,),
          GestureDetector(
            onTap: (){
              Get.to(ListingView());
            },
            child: Container(
              height: MediaQuery.of(context).size.height*.06,
              width: MediaQuery.of(context).size.width*.65,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.yellow,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SizedBox(width: 65,),
                  Text('Search',
                  style: TextStyle(
                    fontSize: 20,

                  ),),
                  SizedBox(width: 65,),
                  Icon(Icons.navigate_next),
                ],
              ),
            ),
          ),
        ],
      )
    );
  }
}
