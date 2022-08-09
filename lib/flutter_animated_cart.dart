library flutter_animated_cart;

import 'dart:ui';

import 'package:flutter/material.dart';

class AnimatedCartScaffold extends StatefulWidget {
  final Widget mainPage;
  final Widget cartPage;
  final Color mainPageColor;
  final Color cartPageColor;
  final Widget cartImage;
  final Widget menuImage;
  final Widget titleWidget;
  const AnimatedCartScaffold(
      {required this.mainPage,
        required this.cartPage,
        required this.mainPageColor,
        this.cartPageColor = Colors.black,
        required this.cartImage,
        required this.menuImage,
        required this.titleWidget});

  @override
  State<AnimatedCartScaffold> createState() => _AnimatedCartScaffoldState();
}

class _AnimatedCartScaffoldState extends State<AnimatedCartScaffold> {
  ScrollController _scrollController = ScrollController();
  int page = 1;

  showMenu() {
    if (page == 1) {
      _scrollController.animateTo(MediaQuery.of(context).size.height - 20,
          duration: Duration(milliseconds: 500), curve: Curves.ease);
      setState(() {
        page = 2;
      });
    } else {
      _scrollController.animateTo(_scrollController.position.minScrollExtent,
          duration: Duration(milliseconds: 500), curve: Curves.ease);
      setState(() {
        page = 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          controller: _scrollController,
          physics: NeverScrollableScrollPhysics(),
          child: Container(
            color: widget.cartPageColor,
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height + 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular((page == 1) ? 0 : 20),
                        bottomLeft: Radius.circular((page == 1) ? 0 : 20)),
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          Container(height: 80, color: widget.mainPageColor),
                          Expanded(
                            child: SizedBox(
                                child: widget.mainPage,
                                width: MediaQuery.of(context).size.width),
                          ),
                        ],
                      ),
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                            bottomRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20)),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 15.0, sigmaY: 15.0),
                          child: Container(
                            height: 80,
                            color: Colors.grey.withOpacity(0.5),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 13.0, right: 13, bottom: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      widget.menuImage,
                                      widget.titleWidget,
                                      GestureDetector(
                                        onTap: () => showMenu(),
                                        child: widget.cartImage,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height - 40,
                    color: widget.cartPageColor,
                    child: Column(
                      children: [
                        Container(
                          height: 50,
                          padding: EdgeInsets.only(right: 35),
                          child: GestureDetector(
                            onTap: () => showMenu(),
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Image.asset(
                                "lib/res/images/upload.png",
                                height: 20,
                                width: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 20),
                            child: ClipRRect(
                                borderRadius:
                                BorderRadius.all(Radius.circular(30)),
                                child: widget.cartPage),
                          ),
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
