import 'package:flutter/material.dart';
import 'package:captaxi/colors/colorpallete.dart';

Widget finalText({
  String? hint,
}) {
  return Container(    
    padding: EdgeInsets.only(right: 5, top: 35, bottom: 25),  
    margin: EdgeInsets.only(left: 20),  
    alignment: Alignment.centerLeft,  
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Perto de você", 
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)
        ),  
      ],
    ) 
  );
}
