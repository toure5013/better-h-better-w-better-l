import 'package:flutter/material.dart';
import 'package:threeb/main.dart';


Route<dynamic> generateRoute(RouteSettings settings) {
  const homeScreenRoute = '/';
  const AuthScreenRoute = "auth";
  const AccueilPageRoute = "accueil";
  const courseVideoPlayerRoute = "videocour";

  // Here we'll handle all the routing
  switch (settings.name) {
    case homeScreenRoute:
      return MaterialPageRoute(builder: (context) =>MyHomePage(),);
    default:
      return MaterialPageRoute(builder: (context) => MyHomePage());
  }
}

