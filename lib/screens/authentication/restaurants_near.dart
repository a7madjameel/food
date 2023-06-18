// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import "package:flutter/material.dart";
import 'package:geolocator/geolocator.dart';

import "../../constants/colors.dart" as colors;

class FindRestaurantsNearScreen extends StatefulWidget {
  const FindRestaurantsNearScreen({Key? key}) : super(key: key);

  @override
  State<FindRestaurantsNearScreen> createState() =>
      _FindRestaurantsNearScreenState();
}

class _FindRestaurantsNearScreenState extends State<FindRestaurantsNearScreen> {
  late TextEditingController _emailTextController;
  late Position position;

  @override
  void initState() {
    super.initState();
    _emailTextController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _emailTextController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.backgroundColor,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pushReplacementNamed(
              context, "/verify_phone_number_screen"),
          icon: Icon(Icons.close),
        ),
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.05,
          vertical: MediaQuery.of(context).size.height * 0.035,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "Find restaurants near you",
              style: TextStyle(
                color: colors.titleColor,
                fontSize: 30,
              ),
            ),
            SizedBox(height: 15),
            Text(
              "Please enter your location or allow access to your location to find restaurants near you.",
              style: TextStyle(
                color: colors.subTitleColor,
                fontSize: 18,
                fontFamily: "Raleway",
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40),
            InkWell(
              onTap: () =>
                  Navigator.pushReplacementNamed(context, "/bottom_nav_screen"),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: colors.buttonColorGreen, width: 1),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      "assets/images/location-arrow.png",
                      width: 40,
                      height: 40,
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.025),
                    Text(
                      "User current location",
                      style: TextStyle(
                        fontFamily: "Raleway",
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: colors.buttonColorGreen,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {},
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 17),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.grey.shade300, width: 1),
                  color: Colors.grey.shade100.withOpacity(0.7),
                ),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.location_on, color: Colors.black54, size: 27),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.04),
                    Text(
                      "Enter a new address",
                      style: TextStyle(
                        fontFamily: "Raleway",
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.black45,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
