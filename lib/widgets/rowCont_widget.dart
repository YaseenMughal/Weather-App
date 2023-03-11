import 'package:flutter/material.dart';
import 'package:weatherproject/constant/color_constant.dart';
import 'package:weatherproject/constant/text_constant.dart';

RowCont(String image, String text1, String text2) {
  return Container(
    height: 180,
    width: 110,
    decoration: BoxDecoration(
        color: ColorConstant.whiteColor,
        borderRadius: BorderRadius.circular(20)),
    child: Column(
      children: [
        Text(text1, style: TextStyle(fontSize: 25)),
        Image.asset(image, scale: 3.5),
        Text(text2, style: TextStyle(fontSize: 18)),
      ],
    ),
  );
}

preCont() {
  return Padding(
    padding: const EdgeInsets.only(left: 5, right: 5),
    child: Container(
      height: 235,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.teal[400], borderRadius: BorderRadius.circular(20)),
      child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                children: [
                  RowCont("assets/images/heavysnow.png", "-4°C", "Heavy Snow"),
                  SizedBox(width: 10),
                  RowCont("assets/images/snow.png", "0°C", "Snow Fall"),
                  SizedBox(width: 10),
                  RowCont(
                      "assets/images/png-clipart-thunderstorm-weather-forecasting-severe-weather-storm-cloud-weather-forecasting-thumbnail.png",
                      "5°C",
                      "Heavy Rain"),
                  SizedBox(width: 10),
                  RowCont(
                      "assets/images/65-658563_free-png-download-clouds-sun-and-rain-drops.png",
                      "10°C",
                      "Rainy Cloud"),
                  SizedBox(width: 10),
                  RowCont(
                      "assets/images/download (1).jpeg", "18°C", "Warm Air"),
                  SizedBox(width: 10),
                  RowCont("assets/images/sun.png", "22°C", "Sun"),
                ],
              ))),
    ),
  );
}

mePreCont() {
  return Column(
    children: [
      Text(
        TextConstant.Mon,
        style: TextStyle(fontSize: 45),
      ),
      preCont(),
      SizedBox(height: 20),
      Text(
        TextConstant.Tue,
        style: TextStyle(fontSize: 45),
      ),
      preCont(),
      SizedBox(height: 20),
      Text(
        TextConstant.Wed,
        style: TextStyle(fontSize: 45),
      ),
      preCont(),
      SizedBox(height: 20),
      Text(
        TextConstant.Thu,
        style: TextStyle(fontSize: 45),
      ),
      preCont(),
      SizedBox(height: 20),
      Text(
        TextConstant.Fri,
        style: TextStyle(fontSize: 45),
      ),
      preCont(),
      SizedBox(height: 20),
      Text(
        TextConstant.Sat,
        style: TextStyle(fontSize: 45),
      ),
      preCont(),
      SizedBox(height: 20),
      Text(
        TextConstant.Sun,
        style: TextStyle(fontSize: 45),
      ),
      preCont()
    ],
  );
}
