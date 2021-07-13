import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shipping_app/pages/card.dart';
import 'package:shipping_app/pages/dashboard.dart';
import 'package:shipping_app/pages/login.dart';
import 'package:shipping_app/pages/product_details.dart';
import 'package:shipping_app/pages/register.dart';
import 'package:shipping_app/pages/splash.dart';
import 'package:shipping_app/provider/product-provider.dart';

void main() {
  runApp(
      // MyApp()

      MultiProvider(
    providers: [ChangeNotifierProvider(create: (context) => ProductProvider())],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,

        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
      ),
      // home: ProductDetails(),
      routes: {
        "/": (context) => LogInPage(),
        "register": (context) => RegisterPage(),
        "Login": (context) => LogInPage(),
        "dashboard": (context) => HomePage(),
        "card": (context) => CardPage(),
      },
    );
  }
}
