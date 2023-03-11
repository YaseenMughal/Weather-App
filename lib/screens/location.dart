import 'package:animated_background/animated_background.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:weatherproject/constant/color_constant.dart';
import 'package:weatherproject/constant/text_constant.dart';
import 'package:weatherproject/screens/home.dart';
import 'package:weatherproject/widgets/meCont.dart';

class LocateView extends StatefulWidget {
  const LocateView({super.key});

  @override
  State<LocateView> createState() => _LocateViewState();
}

class _LocateViewState extends State<LocateView> with TickerProviderStateMixin {
  TextEditingController _textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.blackColor,
      body: AnimatedBackground(
        behaviour: RandomParticleBehaviour(
            options: ParticleOptions(
                spawnMaxRadius: 50.0,
                spawnMinSpeed: 10.0,
                particleCount: 500,
                spawnMaxSpeed: 50,
                minOpacity: 0.3,
                spawnOpacity: 0.4,
                baseColor: ColorConstant.seagreenColor,
                image: Image(
                  image: AssetImage("assets/images/smoke.webp"),
                ))),
        vsync: this,
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomeView()),
                          );
                        },
                        icon: Icon(
                          Icons.arrow_circle_left_outlined,
                          size: 45,
                          color: ColorConstant.whiteColor,
                        ),
                      ),
                      SizedBox(width: 240),
                      IconButton(
                          onPressed: () {
                            showModalBottomSheet(
                              backgroundColor: ColorConstant.greyColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(55.0),
                                topRight: Radius.circular(55.0),
                              )),
                              context: context,
                              builder: (context) {
                                return sheeetCont();
                              },
                            );
                          },
                          icon: Icon(Icons.menu_open_outlined,
                              size: 35, color: ColorConstant.whiteColor)),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: TextField(
                    controller: _textController,
                    style: TextStyle(
                        color: ColorConstant.whiteColor, fontSize: 20),
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(21),
                          borderSide:
                              BorderSide(color: ColorConstant.whiteColor)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: BorderSide(
                            color: ColorConstant.seagreenColor, width: 10),
                      ),
                      labelText: "Search",
                      labelStyle: TextStyle(color: ColorConstant.whiteColor),
                      hintText: "Search here..!",
                      hintStyle: TextStyle(color: ColorConstant.whiteColor),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(TextConstant.HelAr,
                        style: TextStyle(
                            fontSize: 38, color: ColorConstant.whiteColor)),
                    SizedBox(height: 10),
                    Text(
                      TextConstant.DisWea,
                      style: TextStyle(
                          fontSize: 25, color: ColorConstant.whiteColor),
                    )
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                meColum()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
