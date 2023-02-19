import 'package:flutter/material.dart';
import 'package:captaxi/widgets/hometopcard.dart';
import 'package:captaxi/widgets/searchinput.dart';
import 'package:captaxi/colors/colorpallete.dart';
import 'package:captaxi/widgets/locations.dart';
import 'package:captaxi/widgets/savedlocations.dart';
import 'package:captaxi/widgets/mapwidget.dart';
import 'package:captaxi/widgets/finaltext.dart';

Widget homeScreen(
  {String? hint, required String data, required String subData, required context}) {
  return Scaffold(
    backgroundColor: AppColors.defaultWhite,
      body: Column(
        children: <Widget>[
          const SizedBox(height: 40,),
          homeTopCard(data: data, subData: subData, context: context),
          const SizedBox(height: 15,),
          searchInput(context: context),
          const SizedBox(height: 15,),
          locations(context: context),
          const SizedBox(height: 20,),
          savedLocations(context: context),
          finalText(),
          mapWidget(context: context),
        ],
      )
  );
}