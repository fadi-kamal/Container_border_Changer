// ignore_for_file: must_be_immutable

import 'package:containerchanger/controller/home_controller.dart';
import 'package:containerchanger/view/screen/default_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DefaultContainer extends StatelessWidget {
  final bool isAvalibe;
  DefaultContainer({
    required this.isAvalibe,
    Key? key,
  }) : super(key: key);
  ConutingBorder _conutingBorder = Get.put(ConutingBorder());

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        height: 30,
      ),
      Text(
         isAvalibe == true ? "Border Radius\n Top" : "Border Radius\n Bottom" ,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 30),
      ),
      SizedBox(
        height: 10,
      ),
      Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          height: 150,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
             boxShadow: [
                  BoxShadow(
                      blurRadius: 3.0,
                      offset: Offset(-5, 3),
                      color: Colors.blueGrey.shade300.withOpacity(0.5)),
                  BoxShadow(
                      blurRadius: 3.0,
                      offset: Offset(3, -2),
                      color: Colors.blueGrey.shade300.withOpacity(0.5))
                ]
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                GetX<ConutingBorder>(builder: (controller) {
                  return DefaultBorder(
                      titleBorder: "Left",
                      val: isAvalibe == true ?  _conutingBorder.topLeft.value : _conutingBorder.bottomLeft.value , 
                      addPress: () {
                        isAvalibe == true ? _conutingBorder.InCrementTopLeft() : _conutingBorder.InCrementBottomLeft();
                      },
                      removePress: () {
                       isAvalibe == true ?  _conutingBorder.DecrementTopLeft() : _conutingBorder.DecrementBottomLeft() ;
                      });
                }),
                SizedBox(
                  height: 20,
                ),
                GetX<ConutingBorder>(builder: (controller) {
                  return DefaultBorder(
                      titleBorder: "Right",
                      val: isAvalibe == true ? _conutingBorder.topRight.value : _conutingBorder.bottomRight.value,
                      addPress: () {
                       isAvalibe == true ?  _conutingBorder.InCremenTopRight() : _conutingBorder.InCremenBottomRight() ;
                      },
                      removePress: () {
                        isAvalibe == true ?  _conutingBorder.DecrementTopRight() : _conutingBorder.DecrementBottomRight() ;
                      });
                }),
              ],
            ),
          )),
    ]);
  }
}
