import 'package:flutter/material.dart';
import 'package:project_1/Authentication/Profile_Setup.dart';
import 'package:project_1/Widgets/Base_Button.dart';
import 'package:project_1/Widgets/Build_progress_bar.dart';

class EnterEmail extends StatefulWidget {
  const EnterEmail({super.key});

  @override
  State<EnterEmail> createState() => _EnterEmailState();
}

class _EnterEmailState extends State<EnterEmail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 80,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          BuildProgressBar(active: true,),
                          SizedBox(width: 8),
                          BuildProgressBar(),
                          SizedBox(width: 8),
                          BuildProgressBar(),
                        ],
                      ),
                      SizedBox(height: 70),
                      Text(
                        "Email address",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),

                      Text(
                        "Enter your email address",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 17),
                      ),
                      SizedBox(height: 70),

                        TextField(
                           enableSuggestions: false,
                          autocorrect: false,
                          decoration: InputDecoration(
                            filled: true,
                             fillColor: Color(0xFFF2F2F2),
                            border: InputBorder.none,
                          ),
                        ),
                    ],
                  ),
                ),
                SizedBox(height: 130,),
                BaseButton(text: 'Continue', buttonColor: Color(0xFF114CA2), textColor: Colors.white, fontsize: 20, onPressed:() {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) =>ProfileSetup1(),
                  ));
                },),
              ],
            ),

          ),
        ),
      ),
    );
  }
}
