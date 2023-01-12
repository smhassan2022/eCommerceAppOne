import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';

import '../main_categories.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();


}

class _HomeScreenState extends State<HomeScreen> {

  List<Widget> iconList= const[
    Icon(Icons.car_repair),
    Icon(Icons.female),
    Icon(Icons.male),
    Icon(Icons.add_alert),
    Icon(Icons.access_alarm_outlined),
    Icon(Icons.access_time_filled),
    Icon(Icons.accessibility),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          width: double.infinity,
          margin: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.shade200,
                            boxShadow: [
                              BoxShadow(color: Colors.grey.shade50, spreadRadius: 3),
                            ],
                          ),
                          padding: EdgeInsets.all(4),
                          child: Icon(Icons.home, color: Colors.black)),
                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.shade200,
                            boxShadow: [
                              BoxShadow(color: Colors.grey.shade50, spreadRadius: 3),
                            ],
                          ),
                          padding: EdgeInsets.all(4),
                          child: Icon(Icons.search_rounded,color: Colors.black,)),
                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Hey, Muneeb", style: TextStyle(fontSize: 26, color: Colors.black, fontWeight: FontWeight.bold),),
                      SizedBox(height: 5,),
                      Text("Let's shop something", style: TextStyle(fontSize: 14, color: Colors.grey, fontWeight: FontWeight.normal),),

                    ],
                  ),
                ),

                // Display Slider
                slider(),

                // Display Categories
                category(),

                // Display Cards
                MainCategories(),

              ],
            ),
          ),
        ),

        //bottomNavigationBar
        bottomNavigationBar: BubbleBottomBar(
          opacity: .2,
          borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
          hasInk: true, //new, gives a cute ink effect
          inkColor: Colors.black12, //optional, uses theme color if not specified
          items: const <BubbleBottomBarItem>[ 
            BubbleBottomBarItem(backgroundColor: Colors.orangeAccent, icon: Icon(Icons.home, color: Colors.black,), activeIcon: Icon(Icons.home, color: Colors.orangeAccent,), title: Text("Home")),
            BubbleBottomBarItem(backgroundColor: Colors.orangeAccent, icon: Icon(Icons.favorite, color: Colors.grey,), activeIcon: Icon(Icons.favorite, color: Colors.orangeAccent,), title: Text("")),
            BubbleBottomBarItem(backgroundColor: Colors.orangeAccent, icon: Icon(Icons.shopping_cart_rounded, color: Colors.grey,), activeIcon: Icon(Icons.shopping_cart_rounded, color: Colors.orangeAccent,), title: Text("")),
            BubbleBottomBarItem(backgroundColor: Colors.orangeAccent, icon: Icon(Icons.account_circle_sharp, color: Colors.grey,), activeIcon: Icon(Icons.account_circle_sharp, color: Colors.orangeAccent,), title: Text(""))
          ],
        ),

      ),
    );
  }

 // Create Slider Method
 slider(){
    return CarouselSlider(
      items: [
        //1st Image of Slider
        Stack(
          children: [
            Container(
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: const DecorationImage(
                  image: AssetImage("assets/images/img01.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              height: 200,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("30% off", style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),),
                  ElevatedButton(
                    onPressed: (){},
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll<Color>(Colors.black),
                    ),
                    child: Text("Shop Now"),),
                ],
              ),
            )
          ],
        ),

        Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: const DecorationImage(
                  image: AssetImage("assets/images/img02.jpg"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              height: 200,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("50% off", style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),),
                  ElevatedButton(
                    onPressed: (){},
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll<Color>(Colors.black),
                    ),
                    child: Text("Shop Now"),
                  ),
                ],
              ),
            )
          ],
        ),

        Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: const DecorationImage(
                  image: AssetImage("assets/images/img03.jpg"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              height: 200,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("10% off", style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),),
                  ElevatedButton(
                    onPressed: (){},
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll<Color>(Colors.black),
                    ),
                    child: Text("Shop Now"),),
                ],
              ),
            )
          ],
        ),
      ],

      options: CarouselOptions(
        height: 200.0,
        enlargeCenterPage: true,
        autoPlay: true,
        aspectRatio: 16 / 9,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        viewportFraction: 0.8,
      ),
    );
 }

 // Create Category Method
 category(){
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Top Categories", style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),),
              Text("View All", style: TextStyle(fontSize: 14, color: Colors.grey, fontWeight: FontWeight.normal),),
            ],
          ),

          Container(
            height: 50,
            margin: EdgeInsets.symmetric(vertical: 20),
            child: ListView.builder (
              itemCount: iconList.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Container(
                width: 50,
                height: 50,
                margin: EdgeInsets.symmetric(horizontal:5),
                child: iconList[index],
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade200,
                  boxShadow: [
                    BoxShadow(color: Colors.grey.shade50, spreadRadius: 3),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
 }



}

