import 'package:flutter/material.dart';
import 'package:threeb/main.dart';
import 'package:threeb/screen/locationupdate.dart';


Route<dynamic> generateRoute(RouteSettings settings) {
  const homeScreenRoute = '/';
  const map = "map";
  const AuthScreenRoute = "auth";
  const AccueilPageRoute = "accueil";
  const courseVideoPlayerRoute = "videocour";

  // Here we'll handle all the routing
  switch (settings.name) {
    case homeScreenRoute:
      return MaterialPageRoute(builder: (context) =>MyHomePage(),);
    case map:
      return MaterialPageRoute(builder: (context) =>MapUdate(),);
    default:
      return MaterialPageRoute(builder: (context) => MyHomePage());
  }
}

