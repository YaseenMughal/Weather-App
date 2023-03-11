import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:weatherproject/constant/color_constant.dart';
import 'package:weatherproject/constant/text_constant.dart';
import 'package:weatherproject/screens/home.dart';
import 'package:weatherproject/widgets/rowCont_widget.dart';

class PredictView extends StatelessWidget {
  const PredictView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/blu.png"), fit: BoxFit.fill)),
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
                        )),
                    SizedBox(width: 45),
                    Text(
                      TextConstant.NeWe,
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: ColorConstant.whiteColor),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 45),
              mePreCont()
            ],
          ),
        ),
      ),
    );
  }
}
