// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';


class DefaultBorder extends StatelessWidget {
  DefaultBorder(
      {Key? key,
      required this.titleBorder,
      required this.val,
      required this.addPress,
      required this.removePress})
      : super(key: key);

  final String titleBorder;
  var val ;
  final Function addPress;
  final Function removePress;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
            SizedBox(
          width: 20,
        ),
        Text(
          titleBorder,
          style: TextStyle(fontSize: 30),
        ),
        Spacer(),
        Container(
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(50)),
            child: IconButton(
                iconSize: 35,
                color: Colors.white,
                onPressed: () => removePress(),
                icon: Icon(Icons.remove))),
        SizedBox(
          width: 20,
        ),
        Text(" ${val} ", style: TextStyle(fontSize: 30)),
        SizedBox(
          width: 25,
        ),
        Container(
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(50)),
            child: IconButton(
                iconSize: 35,
                color: Colors.white,
                onPressed: () => addPress(),
                icon: Icon(Icons.add))),
        SizedBox(
          width: 20,
        ),
      ],
    );
  }
}
