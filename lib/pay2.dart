import 'package:flutter/material.dart';
import 'pay.dart';

class MyPayApp extends StatefulWidget {
  const MyPayApp({super.key});

  @override
  State<MyPayApp> createState() => _MyPayAppState();
}

class _MyPayAppState extends State<MyPayApp> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('Profile', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21, color: Colors.black),),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20,),
            CircleAvatar(
              radius: 40,
              child: ClipOval(
                child: Image.asset(
                  'assets/image1.jpeg',
                  height: 120,
                  width: 120,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            Text(
              'Classic cars agency',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(20),
              // height: 180,
              // width: 500,
              decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(16)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Car agency profile:',
                    style: TextStyle(fontSize: 12,
                        fontWeight: FontWeight.bold),),
                  SizedBox(height: 3),
                  const Text('Classic cars is an award winning car agancy with the best service experience and quality cars in town',
                    style: TextStyle(fontSize: 12),
                  ),

                  SizedBox(height: 6),
                  Text('Contact us:',
                    style: TextStyle(fontSize: 11),),
                  SizedBox(height: 9),
                  Row(
                    children: [
                      Icon(Icons.email_outlined, size: 18),
                      SizedBox(width: 8),
                      Text('johnmicheal@gmail.com',
                        style: TextStyle(fontSize: 13),),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                      children: [
                        Icon(Icons.location_city_outlined, size: 18),
                        SizedBox(width: 8),
                        Text('12, john avenue street',
                          style: TextStyle(fontSize: 13),),
                      ]
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),


            Container(
              padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
              // height: 150,
              // width: 500,
              decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(16)
              ),
              child: Column(
                children: [
                  buildMenuItem('Subscription plan', Icons.wallet_rounded, Icons.arrow_forward_ios,Colors.black, (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => Pay()
                    ));
                  },),

                  buildMenuItem('Help & support', Icons.help_outline_outlined, Icons.arrow_forward_ios,Colors.black, (){}),
                  buildMenuItem2('Log out', Icons.logout_outlined, Colors.red,  ),
                  buildMenuItem('fuck you', Icons.ice_skating, Icons.arrow_forward_ios, Colors.black, (){},)
                ],
              ),


            ),

            ElevatedButton(onPressed: () {  },
                child: Text(''))
          ],
        ),

      ),
    );
  }
  Widget buildMenuItem2(String title, IconData leading, Color color){
return ListTile(
  leading: Icon(leading, size: 18, color: color,),
  title: Text(title, style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400, color: color),),
);
  }



    Widget buildMenuItem(String title, IconData leading, IconData trailing,Color color, VoidCallback callback){
      return ListTile(
        leading: Icon(leading, size: 18, color: color),
        title: Text(title, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: color),),
        trailing: Icon(trailing, size: 18,),
        onTap: callback,
      );


  }
}
