import 'package:captaxi/routes/selectadress.dart';
import 'package:flutter/material.dart';
import 'package:captaxi/colors/colorpallete.dart';
import 'package:captaxi/widgets/map.dart';

Widget mapWidget(
  {String? hint, required context}) {
  final autowidth = MediaQuery.of(context).size.width * 1;
  return ElevatedButton(
    onPressed: (){
      Navigator.push(
        context, 
        MaterialPageRoute(builder: (context) => const Selectadress())
      );
    },
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.defaultWhite,
      elevation: 0,
      shadowColor: Colors.transparent,
    ), 
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(  
          width: autowidth,
          height: 220.0,   
          alignment: Alignment.centerLeft,  
          decoration: BoxDecoration(
            color: AppColors.primaryGreen,
            borderRadius: BorderRadius.circular(20)
          ),
          child: Column(
            children: [
              Expanded(child: map(context: context))
            ],
          ) 
        )
      ],
    ),
  );
}