import 'package:captaxi/routes/selectadress.dart';
import 'package:flutter/material.dart';
import 'package:captaxi/colors/colorpallete.dart';

Widget locations(
  {String? hint, required context}) {
  final autowidth = MediaQuery.of(context).size.width * 0.94;
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
      maximumSize: Size.fromWidth(autowidth),
      padding: const EdgeInsets.all(15),
      shadowColor: Colors.transparent,
    ), 
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Row(
          children: <Widget>[
            Icon(Icons.place, size: 18),
            SizedBox(width: 14,),
            
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                Text("Universidade Federal Rural da Amazônia", textAlign: TextAlign.center,),
                SizedBox(height: 8,),
                Text("Av. Moura Carvalho, Centro, 1647", style: TextStyle(fontWeight: FontWeight.w300)),
              ]
            ,),

            SizedBox(width: 30,),
            Icon(Icons.chevron_right, size: 22),
          ],
        ),
      ],
    ),
  );
}