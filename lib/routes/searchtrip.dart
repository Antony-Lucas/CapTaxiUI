import 'package:flutter/material.dart';
import 'package:captaxi/colors/colorpallete.dart';

class SearchTrip extends StatelessWidget {
  const SearchTrip({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.defaultWhite,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColors.defaultWhite,
        title: const Text('Agende sua próxima viagem', style: TextStyle(fontSize: 14),),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Voltar'),
        ),
      ),
    );
  }
}
