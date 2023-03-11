import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:weatherproject/constant/color_constant.dart';
import 'package:weatherproject/constant/text_constant.dart';

meCont(String text1, String text2, String text3, String text4, String image) {
  return Container(
    height: 280,
    width: 330,
    decoration: BoxDecoration(
        color: ColorConstant.lightgreenColor,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(150), bottomLeft: Radius.circular(50))),
    child: Column(
      children: [
        Padding(
            padding: const EdgeInsets.only(right: 145),
            child: Text(
              text1,
              style: TextStyle(fontSize: 20),
            )),
        SizedBox(
          height: 25,
        ),
        Text(text2, style: TextStyle(fontSize: 38)),
        SizedBox(height: 10),
        Text(
          text3,
          style: TextStyle(fontSize: 38),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(text4, style: TextStyle(fontSize: 20)),
            Image.asset(
              image,
              height: 118,
            )
          ],
        )
      ],
    ),
  );
}

sheeetCont() {
  return Column(
    children: [
      SizedBox(height: 10),
      Container(
        height: 3,
        width: 75,
        color: ColorConstant.blackColor,
      ),
      SizedBox(height: 25),
      ListTile(
        leading: Icon(Icons.home, size: 28, color: ColorConstant.primaryColor),
        title: Text(
          "Home",
          style: TextStyle(fontSize: 20, color: ColorConstant.blackColor),
        ),
        trailing: Icon(
          Icons.check_box_outlined,
          color: ColorConstant.primaryColor,
        ),
      ),
      ListTile(
        leading: Icon(
          Icons.verified_user,
          size: 28,
          color: ColorConstant.primaryColor,
        ),
        title: Text(
          "Profile",
          style: TextStyle(fontSize: 20, color: ColorConstant.blackColor),
        ),
        trailing: Icon(
          Icons.check_box_outlined,
          color: ColorConstant.primaryColor,
        ),
      ),
      ListTile(
        leading: Icon(Icons.mail, size: 28, color: ColorConstant.primaryColor),
        title: Text(
          "Email",
          style: TextStyle(fontSize: 20, color: ColorConstant.blackColor),
        ),
        trailing: Icon(
          Icons.check_box_outlined,
          color: ColorConstant.primaryColor,
        ),
      ),
      ListTile(
        leading:
            Icon(Icons.settings, size: 28, color: ColorConstant.primaryColor),
        title: Text(
          "Setting",
          style: TextStyle(fontSize: 20, color: ColorConstant.blackColor),
        ),
        trailing: Icon(
          Icons.check_box_outlined,
          color: ColorConstant.primaryColor,
        ),
      ),
      ListTile(
        leading:
            Icon(Icons.feedback, size: 28, color: ColorConstant.primaryColor),
        title: Text(
          "Feedback",
          style: TextStyle(fontSize: 20, color: ColorConstant.blackColor),
        ),
        trailing: Icon(
          Icons.check_box_outlined,
          color: ColorConstant.primaryColor,
        ),
      ),
      ListTile(
        leading: Icon(Icons.logout_outlined,
            size: 28, color: ColorConstant.primaryColor),
        title: Text(
          "Log-out",
          style: TextStyle(fontSize: 20, color: ColorConstant.blackColor),
        ),
        trailing: Icon(
          Icons.check_box_outlined,
          color: ColorConstant.primaryColor,
        ),
      ),
    ],
  );
}

meColum() {
  return Column(
    children: [
      meCont(TextConstant.CL, TextConstant.LosAn, "19°C", TextConstant.SunClo,
          "assets/images/1779806.png"),
      SizedBox(height: 20),
      Text(TextConstant.ArWor,
          style: TextStyle(fontSize: 35, color: ColorConstant.whiteColor)),
      SizedBox(
        height: 10,
      ),
      FaIcon(
        // Icons.more_horiz_sharp,
        Icons.download_outlined,
        color: ColorConstant.whiteColor,
        size: 65,
      ),
      SizedBox(height: 20),
      meCont(TextConstant.Chi, TextConstant.Beij, "19°C", TextConstant.MosSun,
          "assets/images/mostly.png"),
      SizedBox(height: 20),
      meCont(TextConstant.Russ, TextConstant.Mosc, "-04°C", TextConstant.HeSn,
          "assets/images/heavysnow.png"),
      SizedBox(height: 20),
      meCont(TextConstant.Germ, TextConstant.Berl, "8°C", TextConstant.Thun,
          "assets/images/png-clipart-thunderstorm-weather-forecasting-severe-weather-storm-cloud-weather-forecasting-thumbnail.png"),
      SizedBox(height: 20),
      meCont(TextConstant.Aus, TextConstant.Melb, "6°C", TextConstant.Snofa,
          "assets/images/png-transparent-daxue-weather-icon-heavy-snow-weather-icon-white-cloud-camera-icon-thumbnail.png"),
      SizedBox(height: 20),
      meCont(TextConstant.NeZe, TextConstant.Dune, "18°C", TextConstant.WarAi,
          "assets/images/download (1).jpeg"),
    ],
  );
}
