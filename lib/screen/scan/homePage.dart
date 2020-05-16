import 'package:flutter/material.dart';
import 'package:threeb/screen/locationupdate.dart';
import 'package:threeb/screen/scan/generate.dart';
import 'package:threeb/screen/scan/scan.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  BottomNavigationBarItem _bottomIcons(IconData icon) {
    return BottomNavigationBarItem(
      //  backgroundColor: Colors.blue,
        icon: Icon(icon),
        title: Text(""));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey.shade300,
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
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
        title: Text("Homepage"),
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset("assets/images/world.png"),
            //Image(image: NetworkImage("https://media.istockphoto.com/vectors/qr-code-scan-phone-icon-in-comic-style-scanner-in-smartphone-vector-vector-id1166145556")),
            flatButton("Book collector", MapUdate()),
            SizedBox(height: 20.0,),
            flatButton("Scan QR CODE", ScanPage()),
            SizedBox(height: 20.0,),
            flatButton("Generate QR CODE", GeneratePage()),
          ],
        ),
      ),
    );
  }

  Widget flatButton(String text, Widget widget) {
    return FlatButton(
      padding: EdgeInsets.all(15.0),
      onPressed: () async {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => widget));
      },
      child: Text(
        text,
        style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),
      ),
      shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.blue,width: 3.0),
          borderRadius: BorderRadius.circular(20.0)),
    );
  }
}
