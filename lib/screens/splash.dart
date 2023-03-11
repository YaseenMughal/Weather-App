import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:weatherproject/constant/color_constant.dart';
import 'package:weatherproject/screens/home.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    "assets/images/street-light-snow-snowing-winter-wallpaper-preview.jpg"),
                fit: BoxFit.fill)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 325, left: 25, right: 25),
              child: Container(
                  height: 350,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              "assets/images/street-light-snow-snowing-winter-wallpaper-preview.jpg"),
                          fit: BoxFit.fill),
                      // color: Colors.blue[300],
                      borderRadius: BorderRadius.circular(25)),
                  child: Column(
                    children: [
                      Text(
                        "Explore the GreaT\nweather Here..",
                        style: TextStyle(
                            fontSize: 35, color: ColorConstant.whiteColor),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "⥯ ",
                        style: TextStyle(
                            fontSize: 80, color: ColorConstant.whiteColor),
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomeView()),
                          );
                        },
                        child: Text(
                          "Get Explore!",
                          style: TextStyle(fontSize: 25),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 17, 72, 117),
                            side: BorderSide(
                                width: 1,
                                color: Color.fromARGB(255, 124, 116, 116)),
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            padding: EdgeInsets.all(25)),
                      )
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
