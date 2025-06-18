import 'package:flutter/material.dart';
import 'package:project_1/Authentication/Profile_Setup2.dart';
import 'package:project_1/Widgets/Base_Button.dart';


import '../Widgets/Build_progress_bar.dart';

class ProfileSetup1 extends StatefulWidget{
  const ProfileSetup1({super.key});

  @override
  State<ProfileSetup1> createState() => _ProfileSetup1State();
}

class _ProfileSetup1State extends State<ProfileSetup1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(child:
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  SizedBox(height: 60,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BuildProgressBar(active: true,),
                      SizedBox(width: 8),
                      BuildProgressBar(active: true,),
                      SizedBox(width: 8),
                      BuildProgressBar(),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Profile setup', style: TextStyle(fontWeight: FontWeight
                          .bold, fontSize: 28, color: Colors.black),),
                      Row(
                        children: [
                          Text('1/', style: TextStyle(fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),), Text('2',
                            style: TextStyle(fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),)
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 15),
                  // Container(
                  //   padding: EdgeInsets.symmetric(horizontal: 24),
                  //   color: Color(0xFFEEF8FC),
                  //   child: Padding(padding: EdgeInsets.symmetric(vertical: 18),
                  //     child: Column(
                  //       mainAxisAlignment: MainAxisAlignment.start,
                  //       children: [
                  //         Text('Profession', style: TextStyle(
                  //             color: Colors.black87, fontSize: 18),),
                  //         SizedBox(height: 6,),
                  //        
                  //
                  //       ],
                  //     ),
                  //
                  //
                  //   ),
                  //
                  //
                  // ),


                ],
              ),
            ),
            SizedBox(height: 40,),
            BaseButton(text: 'Continue', buttonColor: Color(0xFF114CA2), textColor: Colors.white, fontsize: 20, onPressed:() {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) =>ProfileSetup2(),
              ));
            },),
          ],
        )),
      ),

    );
  }
  
}