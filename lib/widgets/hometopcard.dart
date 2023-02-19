import 'package:flutter/material.dart';
import 'package:captaxi/colors/colorpallete.dart';

Widget homeTopCard(
  {String? hint, required String data, required String subData, required context}) {
  final autowidth = MediaQuery.of(context).size.width * 1;
  return Container(  
    width: autowidth,
    height: 120.0,  
    padding: EdgeInsets.only(left: 15, top: 15),  
    margin: EdgeInsets.all(10),  
    alignment: Alignment.centerLeft,  
    decoration: BoxDecoration(
      color: AppColors.secondaryGeen,
      borderRadius: BorderRadius.circular(5)
    ),
    child: Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              data, 
              style: const TextStyle(fontSize: 14, color: AppColors.defaultWhite)
            ), 
            const SizedBox(height: 35,),
            Text(
              subData, 
              style: const TextStyle(fontSize: 25, color: AppColors.defaultWhite, fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
            ), 
          ],
        ),
        Icon(
          Icons.minor_crash_rounded, 
          size: 70,
          color: AppColors.secondaryYellow,  
        ),
      ],
    ) 
  );
}