import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Payment extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios, size: 24,)),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('Check out',
          style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold,color: Colors.black,),
      ),
      ),
      body:  SingleChildScrollView(
        padding:  EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
         mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.only(top: 16.0),
            child: Center(
              child:    Text(
                'Card payment method',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),),
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.fromLTRB(1, 10, 1, 0),
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(8.0) ,
                    label: Text('Name on card'),
                    hintText: 'John Micheal Ayonde',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                      // borderSide: BorderSide(color: Colors.red, width: 1),
                      borderRadius:   BorderRadius.circular(10),
                    )
                ),
              ),
            ),
            SizedBox(height: 12,),

            Padding(
              padding: const EdgeInsets.fromLTRB(1, 10, 1, 0),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(8.0),
                  labelText: 'Card number',
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Image.network(
                      'https://img.icons8.com/color/48/000000/mastercard-logo.png',
                      width: 24,
                      height: 24,
                    ),
                  ),
                  prefixIconConstraints: BoxConstraints(minWidth: 40, minHeight: 24),
                  hintText: '1222 1234 8867 689',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            SizedBox(height: 12,),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 60.0),
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(8.0),
                        label: Text('Expiry'),
                        hintText: '12/24',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 60.0),
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(8.0),
                        label: Text('CVV'),
                        hintText: '000',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
      SizedBox(height: 200),
            Container(
              padding: EdgeInsets.all(5),
              height: 40,
              width: 500,
              decoration: BoxDecoration(
                color: Color(0xFF001437),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  'Continue',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            SizedBox(height: 8),
        Padding(padding:
        const EdgeInsets.symmetric(vertical: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center, //
          children: [
            Icon(Icons.lock_outline, color: Colors.green),
            const SizedBox(width: 8),
            Text(
              'Secure payment',
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.w600,
                fontSize: 13,
              ),
            ),
          ],
        ),

      ),

    ]
    ),
    ),
    );

  }

}





//  child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(
//                       children: [
//                         Icon(Icons.subscriptions_outlined, size: 18,),
//                         SizedBox(width: 8,),
//                         ElevatedButton(
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.grey.shade100,
//                             overlayColor: Colors.transparent,// Yellow
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(6),
//                             ),
//                           ),
//                           onPressed: () {
//                             Navigator.push(context, MaterialPageRoute(
//                                 builder: (context) => Pay()
//                             ));
//                           },
//                           child: const Text("subscription plan",
//                               style: TextStyle(fontSize: 13, color: Colors.black),),
//                         ),
//                       ],
//                     ),
//                     SizedBox(height: 9,),
//                     Row(
//                       children: [
//                         Icon(Icons.help_outline_outlined, size: 18,),
//                         SizedBox(width: 8,),
//                         Text('Help & Support',
//                         style: TextStyle(fontSize: 13),),
//                       ],
//                     ),
//                     SizedBox(height: 9,),
//                     Row(
//                       children: [
//                         Icon(Icons.logout_outlined, size: 18, color: Colors.red,),
//                         SizedBox(width: 8,),
//                         Text('Log Out',
//                         style: TextStyle(fontSize: 13, color: Colors.red),),
//                       ],
//                     ),
//
//                   ],
//                 ),