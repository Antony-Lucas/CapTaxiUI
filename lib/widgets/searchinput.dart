import 'package:captaxi/routes/searchtrip.dart';
import 'package:flutter/material.dart';
import 'package:captaxi/colors/colorpallete.dart';

Widget searchInput(
  {String? hint, required context}) {
  final autowidth = MediaQuery.of(context).size.width * 0.94;
  return ElevatedButton(
    onPressed: (){
      Navigator.push(
        context, 
        MaterialPageRoute(builder: (context) => const SearchTrip())
      );
    },
    style: ElevatedButton.styleFrom(
      maximumSize: Size.fromWidth(autowidth),
      backgroundColor: AppColors.bgrey,
      elevation: 0,
      padding: const EdgeInsets.all(15),
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(40))),
      shadowColor: Colors.transparent,
    ), 
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Row(
          children: const <Widget>[
            Icon(Icons.search),
            SizedBox(width: 15,),
            Text("Pra onde deseja viajar?", textAlign: TextAlign.center,),
          ],
        )
      ],
    ),
  );
}