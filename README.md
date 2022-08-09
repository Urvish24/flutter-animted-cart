# flutter_animated_cart

Animated page library. 

![Fancy Gif](https://github.com/Urvish24/flutter-animted-cart/blob/main/demo.gif "Fancy Gif")

## Getting Started

Add the plugin (pub coming soon):

```yaml
dependencies:
  ...
  flutter_animated_cart: ^0.0.1
```



## Basic Usage

Adding the widget
```dart
  @override
  Widget build(BuildContext context) {
    return AnimatedCartScaffold(
                    mainPage: HomePage(), // Your HomePage class
                    mainPageColor: Colors.white, // put your Homepage color
                    cartPage: CartPage(),  // Your cart page class
                    cartImage: Image.asset( "lib/res/images/cart.png", width: 25, height: 25),
                    menuImage: GestureDetector(
                                           onTap: () => {}, // menuIcon click
                                           child: const Icon(Icons.menu_sharp,size: 25),
                                         ), 
                    titleWidget: const Text( "Home", // Main page toolbat title
                           style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                         ),
                );
  }
```

