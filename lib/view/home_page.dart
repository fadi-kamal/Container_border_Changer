// ignore_for_file: must_be_immutable, unused_field

import 'package:containerchanger/controller/home_controller.dart';
import 'package:containerchanger/view/screen/defualt_container.dart';
import 'package:containerchanger/view/screen/title_boder.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final ConutingBorder _conutingBorder = Get.put(ConutingBorder());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          TitleOfBorder(
            isActive: true,
          ),
          GetX<ConutingBorder>(
            init: ConutingBorder(),
            builder: (contorller) {
              return InkWell(
                onTap: () {
                 BottomSheet(context);
                },
                child: Container(
                  height: 400,
                  width: 300,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5,
                          spreadRadius: 1.2,
                          offset: Offset(3, 2)),
                      BoxShadow(
                          color: Colors.white,
                          blurRadius: 5,
                          spreadRadius: 1.2,
                          offset: Offset(-3, 2)),
                    ],
                    image: DecorationImage(
                        image: AssetImage("assets/NewYork.jpg"),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(
                            contorller.topLeft.value.toDouble()),
                        topRight: Radius.circular(
                            contorller.topRight.value.toDouble()),
                        bottomLeft: Radius.circular(
                            contorller.bottomLeft.value.toDouble()),
                        bottomRight: Radius.circular(
                            contorller.bottomRight.value.toDouble())),
                  ),
                ),
              );
            },
          ),
          TitleOfBorder(
            isActive: false,
          ),
        ]),
      ),
    );
  }

  Future<Future> BottomSheet(BuildContext context) async {
    return showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25), topRight: Radius.circular(25))),
        context: context,
        builder: (context) {
          return Container(
            height: 500,
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    child: Column(
                      children: [
                        DefaultContainer(
                          isAvalibe: true,
                        ),
                        DefaultContainer(
                          isAvalibe: false,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          );
        });
  }
}
