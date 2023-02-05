import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 5.0,),
            Container(height: 100, child: CatagoryList()),
            const SizedBox(height: 5.0,),
            AdsCarosoel(),
            const SizedBox(height: 5.0,),
            MyGridView(),
          ],
        ),
      ),
    );
  }

  Widget CatagoryList() {
    double size = 50;
    double padding = 12.0;
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Padding(
          padding: EdgeInsets.all(padding),
          child: GestureDetector(
            onTap: () {},
            child: Column(
              children: [
                Image(image: AssetImage("assets/images/1.png"), width: size,),
                SizedBox(height: 8.0,),
                Text("Mobile")
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(padding),
          child: Column(
            children: [
              Image(image: AssetImage("assets/images/2.png"), width: size,),
              SizedBox(height: 8.0,),
              Text("Fashion")
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(padding),
          child: Column(
            children: [
              Image(image: AssetImage("assets/images/3.png"), width: size,),
              SizedBox(height: 8.0,),
              Text("Home")
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(padding),
          child: Column(
            children: [
              Image(image: AssetImage("assets/images/4.png"), width: size,),
              SizedBox(height: 8.0,),
              Text("Books")
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(padding),
          child: Column(
            children: [
              Image(image: AssetImage("assets/images/5.png"), width: size,),
              SizedBox(height: 8.0,),
              Text("Toys")
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(padding),
          child: Column(
            children: [
              Image(image: AssetImage("assets/images/6.png"), width: size,),
              SizedBox(height: 8.0,),
              Text("Beauty")
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(padding),
          child: Column(
            children: [
              Image(image: AssetImage("assets/images/7.png"), width: size,),
              SizedBox(height: 8.0,),
              Text("Deals")
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(padding),
          child: Column(
            children: [
              Image(image: AssetImage("assets/images/8.png"), width: size,),
              SizedBox(height: 8.0,),
              Text("Fresh")
            ],
          ),
        ),
      ],
    );
  }

  Widget AdsCarosoel() {
    List<String> myList = ["assets/images/c1.jpg","assets/images/c2.jpg","assets/images/c3.jpg","assets/images/c4.jpg"];
    return Container(
      child: CarouselSlider(
        options: CarouselOptions(height: 215.0, autoPlay: true,),
        items: myList.map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                  // width: MediaQuery.of(context).size.width,
                  // margin: EdgeInsets.symmetric(horizontal: 5.0),
                  
                  decoration: BoxDecoration(
                      color: Colors.amber,
                    borderRadius: BorderRadius.all(Radius.circular(100))
                  ),
                  child: Stack(children: [
                    Image(image: AssetImage(i), ),
                    i == "assets/images/c1.jpg" ? Positioned(
                        bottom: 20.0,
                        left: 20.0,
                        child: Text("40% Off", style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),),
                    ) : SizedBox()
                  ],)
              );
            },
          );
        }).toList(),
      ),
    );
  }

  Widget MyGridView() {
    return Container(
      height: 500,
      padding: EdgeInsets.all(10.0),
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 1/1.2,
        crossAxisSpacing: 5.0,
        mainAxisSpacing: 10.0,
        children: [
          Card(
            child: Column(
                children: [
                  Image(image: AssetImage("assets/images/p1.jpg")),
                  SizedBox(height: 10,),
                  Text("Headphones")
                ],
            ),
          ),
          Card(
            child: Column(
                children: [
                  Image(image: AssetImage("assets/images/p2.jpg")),
                  SizedBox(height: 10,),
                  Text("Camera")
                ],
            ),
          ),
          Card(
            child: Column(
                children: [
                  Image(image: AssetImage("assets/images/p3.jpg")),
                  SizedBox(height: 10,),
                  Text("Shoes")
                ],
            ),
          ),
          Card(
            child: Column(
                children: [
                  Image(image: AssetImage("assets/images/p4.jpg")),
                  SizedBox(height: 10,),
                  Text("Plant")
                ],
            ),
          ),
        ],
      ),
    );
  }
}
