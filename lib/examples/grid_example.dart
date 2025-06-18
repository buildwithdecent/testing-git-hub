

import 'package:flutter/material.dart';
import 'package:project_1/Tutorials/reusable.dart';

class GridExample extends StatelessWidget{
 GridExample({super.key});

  List<Map<String, String>> gridExample =[
    {'url': 'https://firebasestorage.googleapis.com/v0/b/motor-meal.firebasestorage.app/o/automobile_agency%2Fcars%2Fpurchase_documents%2F02af1748-0886-45c3-904c-71cb8ca5078d_1745063953560?alt=media&token=e7420ab0-63d1-49a2-82f8-fef252f12d29',
      'name': 'One', 'price': 'N100000'},
    {'url': 'https://firebasestorage.googleapis.com/v0/b/motor-meal.firebasestorage.app/o/automobile_agency%2Fcars%2Fcar_images%2Fmain_Honda%20accord-New%20car-02af1748-0886-45c3-904c-71cb8ca5078d-1745066820259.jpg?alt=media&token=e86d1994-1ff1-4926-9d13-3f35e2c833fb',
      'name': 'Two', 'price': 'N300000'},
    {'url': 'https://firebasestorage.googleapis.com/v0/b/motor-meal.firebasestorage.app/o/automobile_agency%2Fcars%2Fcar_images%2Finterior_Honda%20accord-New%20car-02af1748-0886-45c3-904c-71cb8ca5078d-1745066820259.jpg?alt=media&token=e52bc4b2-ebc1-4a62-bf13-bfecfd9f59dd',
      'name': 'Three', 'price': 'N8000300'},
    {'url': '', 'name': 'No url', 'price': '0'},
    {'url': '', 'name': '', 'price': ''},
    {},

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Center(child: GridView.count(
      //   crossAxisCount: 2,
      //   crossAxisSpacing: 10,
      //   mainAxisSpacing: 10,
      //   children: [
      //     ItemCard(imageUrl: 'https://firebasestorage.googleapis.com/v0/b/motor-meal.firebasestorage.app/o/automobile_agency%2Fcars%2Fpurchase_documents%2F02af1748-0886-45c3-904c-71cb8ca5078d_1745063953560?alt=media&token=e7420ab0-63d1-49a2-82f8-fef252f12d29',
      //         name: 'Nike', price: 'N10,000'),
      //     ItemCard(imageUrl: 'https://firebasestorage.googleapis.com/v0/b/motor-meal.firebasestorage.app/o/automobile_agency%2Fcars%2Fpurchase_documents%2F02af1748-0886-45c3-904c-71cb8ca5078d_1745063953560?alt=media&token=e7420ab0-63d1-49a2-82f8-fef252f12d29',
      //         name: 'Nike', price: 'N10,000'),
      //     ItemCard(imageUrl: 'https://firebasestorage.googleapis.com/v0/b/motor-meal.firebasestorage.app/o/automobile_agency%2Fcars%2Fpurchase_documents%2F02af1748-0886-45c3-904c-71cb8ca5078d_1745063953560?alt=media&token=e7420ab0-63d1-49a2-82f8-fef252f12d29',
      //         name: 'Nike', price: 'N10,000'),
      //     ItemCard(imageUrl: 'https://firebasestorage.googleapis.com/v0/b/motor-meal.firebasestorage.app/o/automobile_agency%2Fcars%2Fpurchase_documents%2F02af1748-0886-45c3-904c-71cb8ca5078d_1745063953560?alt=media&token=e7420ab0-63d1-49a2-82f8-fef252f12d29',
      //         name: 'Nike', price: 'N10,000'),
      //     ItemCard(imageUrl: 'https://firebasestorage.googleapis.com/v0/b/motor-meal.firebasestorage.app/o/automobile_agency%2Fcars%2Fpurchase_documents%2F02af1748-0886-45c3-904c-71cb8ca5078d_1745063953560?alt=media&token=e7420ab0-63d1-49a2-82f8-fef252f12d29',
      //         name: 'Nike', price: 'N10,000'),
      //
      //   ],
      // ),)

      body: Center(
        child: GridView.builder(
itemCount: gridExample.length,
            gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
            mainAxisSpacing: 10,

            ),
          itemBuilder: (BuildContext context, int index) {
  return ItemCard(imageUrl: gridExample[index]['url']??'', name:  gridExample[index]['name']??'No data', price:  gridExample[index]['price']??'');
          },),
      ),
    );
  }
  
}