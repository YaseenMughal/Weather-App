import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:weatherproject/constant/color_constant.dart';
import 'package:weatherproject/constant/text_constant.dart';
import 'package:weatherproject/screens/location.dart';
import 'package:weatherproject/widgets/homeColum_widget.dart';
import 'package:weatherproject/widgets/rowCont_widget.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Color.fromARGB(255, 69, 126, 120),
      child: Column(
        children: [
          Container(
            height: 335,
            width: double.infinity,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 13, top: 10),
                        child: Text(
                          TextConstant.HelAr,
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: ColorConstant.whiteColor),
                        ),
                      ),
                      SizedBox(
                        width: 90,
                      ),
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LocateView(),
                                ));
                          },
                          icon: Icon(
                            Icons.search,
                            color: ColorConstant.whiteColor,
                            size: 30,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.notifications_rounded,
                            color: ColorConstant.whiteColor,
                            size: 30,
                          ))
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(right: 85),
                  child: Text(
                    TextConstant.DisWea,
                    style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                        color: ColorConstant.whiteColor),
                  ),
                ),
                SizedBox(height: 19),
                HoColum()
              ],
            ),
          ),
          Container(
            height: 320,
            width: double.infinity,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 23, top: 15),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          TextConstant.Temp,
                          style: TextStyle(
                              fontSize: 32, color: ColorConstant.whiteColor),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: Container(
                    height: 235,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.teal[400],
                        borderRadius: BorderRadius.circular(20)),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          children: [
                            RowCont("assets/images/heavysnow.png", "-4°C",
                                "Heavy Snow"),
                            SizedBox(width: 10),
                            RowCont(
                                "assets/images/snow.png", "0°C", "Snow Fall"),
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
                            RowCont("assets/images/download (1).jpeg", "18°C",
                                "Warm Air"),
                            SizedBox(width: 10),
                            RowCont("assets/images/sun.png", "22°C", "Sun"),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
