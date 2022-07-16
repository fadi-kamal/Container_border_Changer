import 'package:containerchanger/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TitleOfBorder extends StatelessWidget {
  bool isActive = true;
  TitleOfBorder({
    required this.isActive,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          height: 55,
          width: 55,
          decoration: BoxDecoration(
              color: isActive == true ? Colors.red : Colors.teal,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    blurRadius: 3.0,
                    offset: isActive ? Offset(1, -1) : Offset(1, 1),
                    color: Colors.grey),
                BoxShadow(
                    blurRadius: 3.0,
                    offset: isActive ? Offset(-1, 1) : Offset(-1, -1),
                    color: Colors.white)
              ]),
          child: GetX<ConutingBorder>(
            init: ConutingBorder(),
            builder: (controller) {
              return isActive == true
                  ? Text(
                      "Border TL\n ${controller.topLeft}",
                      textAlign: TextAlign.center,
                    )
                  : Text("Boder BL \n ${controller.bottomLeft}",
                      textAlign: TextAlign.center);
            },
          ),
        ),
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          height: 55,
          width: 55,
          decoration: BoxDecoration(
              color: isActive == true ? Colors.teal : Colors.red,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    blurRadius: 3.0,
                    offset: isActive == true ? Offset(1, -1) : Offset(1, 1),
                    color: Colors.grey),
                BoxShadow(
                    blurRadius: 3.0,
                    offset: isActive == true ? Offset(-1, 1) : Offset(-1, -1),
                    color: Colors.white)
              ]),
          child: GetX<ConutingBorder>(
            init: ConutingBorder(),
            builder: (controller) {
              return isActive == true
                  ? Text(" Border TR\n ${controller.topRight}",
                      textAlign: TextAlign.center)
                  : Text(
                      "Boder BR\n ${controller.bottomRight}",
                      textAlign: TextAlign.center,
                    );
            },
          ),
        ),
      ],
    );
  }
}
