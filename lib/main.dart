import 'package:apirick/screems/homerick.dart';
// ignore: unused_import
import 'package:apirick/screems/details.dart';
//import 'package:splashscreen/splashscreen.dart';

import 'package:flutter/material.dart';

import 'models/dataapi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          //dark theme
          //brightness: Brightness.dark,

          //primarySwatch: Colors.blue,
          ),
      //home: const HomeRick(),
      routes: {
        '/': (BuildContext context) => HomeRick(key: homeKey),
        '/details': (BuildContext context) => Details(
              recibirdatos:
                  ModalRoute.of(context)?.settings.arguments as DataApi,
            ),
      },
    );
  }
}

/*class Splash2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 6,
      navigateAfterSeconds: HomeRick(),
      title: Text(
        'GeeksForGeeks',
        textScaleFactor: 2,
      ),
      image: Image.network(
          'https://www.geeksforgeeks.org/wp-content/uploads/gfg_200X200.png'),
      loadingText: Text("Loading"),
      photoSize: 100.0,
      loaderColor: Colors.blue,
    );
  }
}*/
