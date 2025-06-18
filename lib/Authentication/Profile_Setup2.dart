import 'package:flutter/material.dart';
import 'package:project_1/Authentication/OTP.dart';
import 'package:project_1/Widgets/Base_Button.dart';


import '../Widgets/Build_progress_bar.dart';

class ProfileSetup2 extends StatefulWidget{
  const ProfileSetup2({super.key});

  @override
  State<ProfileSetup2> createState() => _ProfileSetup2State();
}

class _ProfileSetup2State extends State<ProfileSetup2> {
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
                          Text('2/', style: TextStyle(fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),), Text('2',
                            style: TextStyle(fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),)
                        ],
                      )
                    ],
                  ),

                ],
              ),
            ),
            SizedBox(height: 40,),
            BaseButton(text: 'Setup profile', buttonColor: Color(0xFF114CA2), textColor: Colors.white, fontsize: 20, onPressed:() {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) =>OtpScreen(),
              ));
            },),
          ],
        )),
      ),

    );
  }

}