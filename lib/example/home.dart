
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animated_cart/flutter_animated_cart.dart';

import 'container_temp.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([]);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: AnimatedCartScaffold(
          mainPage: HomePage(),
          mainPageColor: Colors.white,
          cartPage: CartPage(),
          cartImage: Image.asset(
            "lib/res/images/cart.png",
            width: 25,
            height: 25,
          ),
          menuImage: GestureDetector(
            onTap: () => {},
            child: const Icon(
              Icons.menu_sharp,
              size: 25,
            ),
          ),
          titleWidget: const Text(
            "Home",
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 23),
            ContainerTemp(
                height: 250,
                width: MediaQuery.of(context).size.width,
                color: Colors.purpleAccent),
            SizedBox(height: 27),
            ContainerTemp(
                height: 70,
                width: MediaQuery.of(context).size.width,
                color: Colors.amber),
            SizedBox(height: 27),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ContainerTemp(height: 150, width: 70, color: Colors.blue),
                  SizedBox(width: 20),
                  ContainerTemp(height: 150, width: 70, color: Colors.orange),
                  SizedBox(width: 20),
                  ContainerTemp(height: 150, width: 70, color: Colors.pink),
                  SizedBox(width: 20),
                  ContainerTemp(height: 150, width: 70, color: Colors.purple),
                  SizedBox(width: 20),
                  ContainerTemp(height: 150, width: 70, color: Colors.yellow),
                  SizedBox(width: 20),
                ],
              ),
            ),
            SizedBox(height: 27),
            ContainerTemp(
                height: 70,
                width: MediaQuery.of(context).size.width,
                color: Colors.pink),
            SizedBox(height: 27),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ContainerTemp(height: 150, width: 150, color: Colors.green),
                  SizedBox(width: 20),
                  ContainerTemp(height: 150, width: 150, color: Colors.red),
                  SizedBox(width: 20),
                  ContainerTemp(height: 150, width: 150, color: Colors.yellow),
                  SizedBox(width: 20),
                ],
              ),
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10, bottom: 10),
            child: Row(
              children: [
                ContainerTemp(height: 100, width: 100, color: Colors.green),
                SizedBox(width: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ContainerTemp(
                        height: 40, width: 150, color: Colors.blueAccent),
                    SizedBox(height: 20),
                    ContainerTemp(
                        height: 40, width: 200, color: Colors.pinkAccent),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10, bottom: 10),
            child: Row(
              children: [
                ContainerTemp(height: 100, width: 100, color: Colors.green),
                SizedBox(width: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ContainerTemp(
                        height: 40, width: 150, color: Colors.blueAccent),
                    SizedBox(height: 20),
                    ContainerTemp(
                        height: 40, width: 200, color: Colors.pinkAccent),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10, bottom: 10),
            child: Row(
              children: [
                ContainerTemp(height: 100, width: 100, color: Colors.green),
                SizedBox(width: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ContainerTemp(
                        height: 40, width: 150, color: Colors.blueAccent),
                    SizedBox(height: 20),
                    ContainerTemp(
                        height: 40, width: 200, color: Colors.pinkAccent),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
