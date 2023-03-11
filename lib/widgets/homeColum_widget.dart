import 'package:flutter/material.dart';
import 'package:weatherproject/constant/color_constant.dart';
import 'package:weatherproject/constant/text_constant.dart';

HoColum() {
  return Padding(
    padding: const EdgeInsets.only(left: 20, right: 20),
    child: Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
          color: ColorConstant.lightgreenColor,
          // color: Colors.teal[400],
          borderRadius: BorderRadius.circular(45)),
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    TextConstant.T1M,
                    style: TextStyle(fontSize: 22),
                  ),
                  Text(
                    TextConstant.Tdy,
                    style: TextStyle(fontSize: 22),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    TextConstant.LosAn,
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    "09:41 pm",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 140),
                child: Column(
                  children: [
                    Text(
                      "19°C",
                      style: TextStyle(fontSize: 55),
                    ),
                    Text(
                      TextConstant.SunClo,
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                ),
              )
            ],
          ),
          Positioned(
            top: 85,
            left: 165,
            child: Image.asset(
              "assets/images/1779806.png",
              height: 140,
            ),
          )
        ],
      ),
    ),
  );
}
