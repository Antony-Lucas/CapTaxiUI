import 'package:captaxi/colors/colorpallete.dart';
import 'package:flutter/material.dart';
import 'package:captaxi/routes/selectadress.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:captaxi/mapboxapi/apirequest.dart';

Widget map({String? hint, required context}) {
  final autowidth = MediaQuery.of(context).size.width * 1;
  return Scaffold(
      body: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: FlutterMap(
              options: MapOptions(
                minZoom: 5,
                maxZoom: 18,
                zoom: 16,
                center: AppConstants.myLocation,
                screenSize: Size.fromRadius(50),
                onTap: (tapPosition, point) => Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => const Selectadress())
                ),
              ),
              layers: [
                TileLayerOptions(
                  urlTemplate:
                    "https://api.mapbox.com/styles/v1/antonylucas/clealqqp1000a01mp69mm48c4/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoiYW50b255bHVjYXMiLCJhIjoiY2xlYWxrd3FwMDlkcDN4cDcybmtwazN2OCJ9.3bgNZpo0V_q8YpDc6ASBbg",
                  additionalOptions: {
                    'mapStyleId': AppConstants.mapBoxStyle,
                    'accessToken': AppConstants.mapBoxAcessToken,
                  },
                ),
              ],
          ) ,
          )
        ],
      ),
    );
}