import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:keepco2low/screens/news.dart';
import 'package:keepco2low/screens/profile.dart';
import 'package:keepco2low/screens/reward.dart';

class MissionScreen extends StatefulWidget {
  const MissionScreen({Key? key}) : super(key: key);

  @override
  State<MissionScreen> createState() => _MissionScreenState();
}

class _MissionScreenState extends State<MissionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(254, 255, 233, 1.0),
      bottomNavigationBar: Container(
        height: 65,
        decoration: BoxDecoration(color: Color.fromRGBO(54, 77, 27, 1.0)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              iconSize: 100.0,
              icon: Image.asset('images/mission2.png'),
              onPressed: () {
                MaterialPageRoute materialPageRoute = MaterialPageRoute(
                    builder: (BuildContext context) => MissionScreen());
                Navigator.of(context).push(materialPageRoute);
              },
            ),
            IconButton(
              iconSize: 100.0,
              icon: Image.asset('images/reward.png'),
              onPressed: () {
                MaterialPageRoute materialPageRoute = MaterialPageRoute(
                    builder: (BuildContext context) => RewardScreen());
                Navigator.of(context).push(materialPageRoute);
              },
            ),
            IconButton(
              iconSize: 100.0,
              icon: Image.asset('images/news.png'),
              onPressed: () {
                MaterialPageRoute materialPageRoute = MaterialPageRoute(
                    builder: (BuildContext context) => NewsScreen());
                Navigator.of(context).push(materialPageRoute);
              },
            ),
            IconButton(
              iconSize: 100.0,
              icon: Image.asset('images/profile.png'),
              onPressed: () {
                MaterialPageRoute materialPageRoute = MaterialPageRoute(
                    builder: (BuildContext context) => ProfileScreen());
                Navigator.of(context).push(materialPageRoute);
              },
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Container(
            height: 120,
            color: Color.fromRGBO(54, 77, 27, 1.0),
          ),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 22),
                showUser(),
                SizedBox(height: 45),
                showTopic(),
                showSpecial(),
                showExplain(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget showUser() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(width: 22),
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage('images/co2logo.jpg'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 5),
            Text(
              'Username',
              style: GoogleFonts.kanit(
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Text(
              'Points : ',
              style: GoogleFonts.kanit(
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }

  Widget showTopic() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(width: 25),
        Container(
          width: 200,
          height: 60,
          decoration: BoxDecoration(
            color: Color.fromRGBO(109, 143, 69, 1.0),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Center(
            child: Text(
              "Today's mission",
              style: GoogleFonts.kanit(
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget showSpecial() {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      SizedBox(width: 35),
      Text(
        "Special",
        style: GoogleFonts.kanit(
          textStyle: TextStyle(
              color: Color.fromRGBO(109, 143, 69, 1.0),
              fontSize: 24.0,
              fontWeight: FontWeight.w400,
              shadows: [
                Shadow(
                    offset: Offset(2.0, 1.6),
                    blurRadius: 0.5,
                    color: Color.fromRGBO(195, 210, 167, 1.0))
              ]),
        ),
      ),
    ]);
  }

  Widget showExplain() {
    return Center(
      child: Text(
        'วันนี้คุณช่วยลดการเกิดคาร์บอนไดออกไซด์\n                ไปได้แล้วกี่เปอร์เซ็นต์',
        style: GoogleFonts.kanit(
          textStyle: TextStyle(
              color: Color.fromRGBO(109, 143, 69, 1.0),
              fontSize: 22.0,
              fontWeight: FontWeight.w300,
              shadows: [
                Shadow(
                    offset: Offset(1.7, 1.3),
                    blurRadius: 0.5,
                    color: Color.fromRGBO(195, 210, 167, 1.0))
              ]),
        ),
      ),
    );
  }
}
