import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';
import 'package:threeb/screen/locationupdate.dart';

class IntroApp extends StatefulWidget {
  @override
  _IntroAppState createState() => _IntroAppState();
}

class _IntroAppState extends State<IntroApp> {

  List<Slide> slides = new List();



  @override
  void initState() {
    // Log user in

    super.initState();
    //calendarAdd();

    slides.add(
      new Slide(
        colorBegin: Color(0xffFFDAB9),
        colorEnd: Color(0xff05a623),
        title: "CLEAN",
        styleTitle: TextStyle(
            color: Color(0xff3da4ab),
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'RobotoMono'),
        description:
        "Much evil soon high in hope do view. Out may few northward believing attempted. Yet timed being songs marry one defer men our. Although finished blessing do of",
        styleDescription: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontStyle: FontStyle.italic,
            fontFamily: 'Raleway'),
        pathImage: "assets/images/bin.png",
      ),
    );
    slides.add(
      new Slide(
        colorBegin: Color(0xffFFDAB9),
        colorEnd: Color(0xff40E0D0),
        title: "ENGAGED",
        styleTitle: TextStyle(
            color: Color(0xff3da4ab),
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'RobotoMono'),
        description:
        "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.",
        styleDescription: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontStyle: FontStyle.italic,
            fontFamily: 'Raleway'),
        pathImage: "assets/driving_pin.png",
      ),
    );
    slides.add(
      new Slide(
        colorBegin: Color(0xff7FFFD4),
        colorEnd: Color(0xffFFA500),
        title: "Destination",
        styleTitle: TextStyle(
            color: Color(0xff3da4ab),
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'RobotoMono'),
        description:
        "Ye indulgence unreserved connection alteration appearance",
        styleDescription: TextStyle(
            color: Color(0xffFFFACD),
            fontSize: 20.0,
            fontStyle: FontStyle.italic,
            fontFamily: 'Raleway'),
        pathImage: "assets/images/bincar.png",
      ),
    );


  }

  void onDonePress() {
    // TODO: go to next screen
    // TODO: go to next screen
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MapUdate()),
    );
  }

  void onSkipPress() {
    // TODO: go to next screen
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MapUdate()),
    );
  }

  Widget renderNextBtn() {
    return Icon(
      Icons.navigate_next,
      color: Color(0xfff5a623),
      size: 35.0,
    );
  }

  Widget renderDoneBtn() {
    return Icon(
      Icons.done,
      color: Color(0xfff5a623),
    );
  }

  Widget renderSkipBtn() {
    return Icon(
      Icons.skip_next,
      color: Color(0xfff5a623),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new IntroSlider(
      // List slides
      slides: this.slides,

      // Skip button
      renderSkipBtn: this.renderSkipBtn(),
      colorSkipBtn: Color(0x33000005),
      highlightColorSkipBtn: Color(0xff000005),

      // Next button
      renderNextBtn: this.renderNextBtn(),

      // Done button
      renderDoneBtn: this.renderDoneBtn(),
      onDonePress: this.onDonePress,
      colorDoneBtn: Color(0x33000000),
      highlightColorDoneBtn: Color(0xff000000),

      // Dot indicator
      colorDot: Color(0xff20315),
      colorActiveDot: Colors.white,

      // Dot indicator
      sizeDot: 13.0,
    );
  }



}
