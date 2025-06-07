import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'reusable.dart';

class SimpleApp extends StatelessWidget{
  const SimpleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.activeBlue,
      body: SafeArea(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 90,),
                Text('Simple App',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),),
                SizedBox(height: 60,),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                   padding: EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),

                  ),
                  child: Text('Click Me',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                ),
               SizedBox(height: 30),

                Expanded(
                  child:
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(16),
                  child: ListView(
                    children: [
                      Reusable(title: 'Warm Up', description: 'Start your workout with 5-10 minutes of warming up.'),
                      Reusable(title: 'Stay Hydrated', description: 'Drink water before, during, and after exercise.'),
                      Reusable(title: 'Proper Form', description: 'Focus on maintaining proper form to prevent injury'),
                      
                    ],
                  ),
                ),
                ),

              ],
            ),
          ),
          

      ),
    );

  }

}