import 'package:flutter/material.dart';
import 'package:intro_views_flutter/Models/page_view_model.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';

/// This is the main method of app, from here execution starts.
void main() => runApp(new App());

/// App widget class

class App extends StatelessWidget {
  //making list of pages needed to pass in IntroViewsFlutter constructor.
  final pages = [
    new PageViewModel(
      pageColor: const Color(0xFF03A9F4),
      mainImageAssetPath: 'assets/airplane.png',
      title: 'Flights',
      body:
          'Haselfree  booking  of  flight  tickets  with  full  refund  on  cancelation',
      iconImageAssetPath: 'assets/air-hostess.png',
      titleTextColor: Colors.white,
      bodyTextColor: Colors.white,
      fontFamily: "MyFont",
      titleTextSize: 50.0,
      bodyTextSize: 24.0,
      iconColor: null,
      pageTitleBold: false,
      bubbleBackgroundColor: Colors.white,
    ),
    new PageViewModel(
      pageColor: const Color(0xFF8BC34A),
      mainImageAssetPath: 'assets/hotel.png',
      title: 'Hotels',
      body:
          'We  work  for  the  comfort ,  enjoy  your  stay  at  our  beautiful  hotels',
      iconImageAssetPath: 'assets/waiter.png',
      titleTextColor: Colors.white,
      bodyTextColor: Colors.white,
      iconColor: null,
      titleTextSize: 54.0,
      bodyTextSize: 24.0,
      fontFamily: "MyFont",
      pageTitleBold: false,
      bubbleBackgroundColor: Colors.white,
    ),
    new PageViewModel(
      pageColor: const Color(0xFF607D8B),
      mainImageAssetPath: 'assets/taxi.png',
      title: 'Cabs',
      body:
          'Easy  cab  booking  at  your  doorstep  with      cashless  payment  system',
      iconImageAssetPath: 'assets/taxi-driver.png',
      titleTextColor: Colors.white,
      bodyTextColor: Colors.white,
      iconColor: null,
      titleTextSize: 54.0,
      bodyTextSize: 24.0,
      fontFamily: "MyFont",
      pageTitleBold: false,
      bubbleBackgroundColor: Colors.white,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'IntroViews Flutter', //title of app
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ), //ThemeData
      home: new Builder(
        builder: (context) => new IntroViewsFlutter(
              pages,
              onTapDoneButton: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new HomePage()), //MaterialPageRoute
                );
              },
              showSkipButton:
                  true, //Whether you want to show the skip button or not.
              pageButtonsColor: Colors.white,
              pageButtonTextSize: 18.0,
            ), //IntroViewsFlutter
      ), //Builder
    ); //Material App
  }
}

/// Home Page of our example app.

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Home'),
      ), //Appbar
      body: new Center(
        child: new Text("This is the home page of the app"),
      ), //Center
    ); //Scaffold
  }
}
