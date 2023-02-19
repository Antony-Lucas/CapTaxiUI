import 'package:flutter/material.dart';
import 'package:captaxi/colors/colorpallete.dart';

class Selectadress extends StatefulWidget {
  const Selectadress({super.key});

  @override
  State<Selectadress> createState() => _SelectadressState();
}

class _SelectadressState extends State<Selectadress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.defaultWhite,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColors.defaultWhite,
        title: const Text('Escolha um destino', style: TextStyle(fontSize: 14),),
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
