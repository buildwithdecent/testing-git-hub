

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Reusable2.dart';

class GridExample2 extends StatelessWidget{
   GridExample2({super.key});

   List<Map<String, dynamic>> brandCart = [
     {'logopath':'assets/image2.jpg','brandname':'Nike', 'productCount':265},
     {'logopath':'assets/image2.jpg','brandname':'Acer', 'productCount':36},
     {'logopath':'assets/image2.jpg','brandname':'Adidas', 'productCount':95},
     {'logopath':'assets/image2.jpg','brandname':'Jordan', 'productCount':36},
     {'logopath':'assets/image2.jpg','brandname':'Puma', 'productCount':65},
     {'logopath':'assets/image2.jpg','brandname':'Apple', 'productCount':16},
     {'logopath':'assets/image2.jpg','brandname':'Zara', 'productCount':36},
     {'logopath':'assets/image2.jpg','brandname':'Sams...', 'productCount':36},
     {'logopath':'assets/image2.jpg','brandname':'Kenw...', 'productCount':36},
     {'logopath':'assets/image2.jpg','brandname':'IKEA', 'productCount':36},
     {}
   ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white ,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text('Brands', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
          Expanded(
            child: GridView.builder(
              itemCount:brandCart.length,
              gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              itemBuilder: (BuildContext context, int index) {
                return BrandCard(logoPath: brandCart[index]['logopath']??'', brandName: brandCart[index]['brandname']??'', productCount: brandCart[index]['productCount']??0);
              },),
          ),
        ],
      ),
    );

  }



}