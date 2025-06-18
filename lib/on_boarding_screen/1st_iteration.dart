
import 'package:flutter/material.dart';
import 'package:project_1/Widgets/Base_Button.dart';
import 'OnboardingScreen.dart';
class Iteration extends StatelessWidget{
  const Iteration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              SizedBox(height: 90,),
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 330,
                      height: 330,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFF7FD2F0),
                      ),
                    ),

                    Positioned(
                      top: 20,
                      bottom: 0,
                      right: 10,
                      child: Container(
                        width: 310,
                        height: 310,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFB2E6F7),
                        ),
                        child:    Image.asset('assets/lenses.png'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          
          Column(
            children: [
              BaseButton(text: 'GET STARTED', buttonColor: Color(0xFF114CA2), textColor: Colors.white, onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => OnboardingScreen()));
              }, fontsize: 20,),
              // ElevatedButton(
              //   onPressed: () {
              //     Navigator.push(context, MaterialPageRoute(
              //         builder: (context) => OnboardingScreen()));
              //   },
              //   style: ElevatedButton.styleFrom(
              //     backgroundColor:Color(0xFF114CA2),
              //       shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(25),
              //     ),
              //   ),
              //   child: Container(
              //     height: 50,
              //     width: 330,
              //     padding: EdgeInsets.all(10),
              //     alignment: Alignment.center,
              //     child: Text(
              //       'GET STARTED',
              //       style: TextStyle(
              //         fontSize: 21,
              //         fontWeight: FontWeight.bold,
              //         color: Colors.white,
              //       ),
              //     ),
              //   ),
              // ),
              SizedBox(height: 60,),
            ],
          ),

        ],
      ),

    );

  }
}