import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'dart:ui';
import 'package:flutter/rendering.dart';
import 'package:threeb/screen/locationupdate.dart';
import 'package:threeb/screen/scan/scan.dart';

class GeneratePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => GeneratePageState();
}

class GeneratePageState extends State<GeneratePage> {
  BottomNavigationBarItem _bottomIcons(IconData icon) {
    return BottomNavigationBarItem(
      //  backgroundColor: Colors.blue,
        icon: Icon(icon),
        title: Text(""));
  }


  String qrData =
      "https://github.com/neon97";  // already generated qr code when the page opens

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey.shade300,
        type: BottomNavigationBarType.fixed,
        currentIndex: 2,
        items: [
          _bottomIcons(Icons.person),
          _bottomIcons(Icons.camera),
          _bottomIcons(Icons.build),
        ],
        onTap: (index) {
          print(index);
          switch(index){
            case 0 :
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => MapUdate()));
              break;
            case 1 :
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => ScanPage()));
              break;
            case 2 :
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => GeneratePage()));
              break;

          }

        },
      ),
      appBar: AppBar(
        title: Text('QR Code Generator'),
        actions: <Widget>[],
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 200.0,
              width: 300,
              child: QrImage(
                //plce where the QR Image will be shown
                data: qrData,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "New QR Link Generator",
              style: TextStyle(fontSize: 20.0),
            ),
            TextField(
              controller: qrdataFeed,
              decoration: InputDecoration(
                hintText: "Input your link or data",
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(40, 20, 40, 0),
              child: FlatButton(
                padding: EdgeInsets.all(15.0),
                onPressed: () async {

                  if (qrdataFeed.text.isEmpty) {        //a little validation for the textfield
                    setState(() {
                      qrData = "";
                    });
                  } else {
                    setState(() {
                      qrData = qrdataFeed.text;
                    });
                  }

                },
                child: Text(
                  "Generate QR",
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                ),
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.blue, width: 3.0),
                    borderRadius: BorderRadius.circular(20.0)),
              ),
            )
          ],
        ),
      ),
    );
  }

  final qrdataFeed = TextEditingController();
}
