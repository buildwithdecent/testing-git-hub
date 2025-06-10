

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Reusable2.dart';

class GridExample2 extends StatelessWidget{
  const GridExample2({super.key});

  // List<Map<String, dynamic>> Reusable2


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: BrandCard(logoPath: 'assets/image1.jpeg', brandName: 'Nike', productCount: 265)),

    );

  }



}