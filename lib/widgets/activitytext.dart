import 'package:flutter/material.dart';
import 'package:captaxi/colors/colorpallete.dart';

Widget activityText({
  String? hint,
}) {
  return Container(    
    padding: EdgeInsets.only(right: 5, top: 35, bottom: 25),  
    margin: EdgeInsets.only(left: 20),  
    alignment: Alignment.centerLeft,  
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: const <Widget>[
        Text(
          "Atividade", 
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 34)
        ), 
        SizedBox(height: 30,), 
        Text(
          "Passado", 
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)
        ), 
      ],
    ) 
  );
}
