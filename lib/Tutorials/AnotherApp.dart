import 'package:flutter/material.dart';
import 'reusable.dart';


class AnotherApp extends StatelessWidget{
  const AnotherApp({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> another = [{'title' : 'Rest Days', 'Description' : 'Incorporate rest days into your routine to allow recovery.'},
    {'title' : 'Balanced Diet', 'Description' : 'Support your fitness growth with a balanced and nutritious diet.'},
    {'title' : 'Proper Form', 'Description' : "Pay attention to your body's signals and avoid overtraining."},
      {},
    ];


    return Scaffold(
      backgroundColor: Colors.green,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 90,),
              Text('Another page',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.black),),
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
                  // child: ListView(
                  //   children: [
                  //     Reusable(title: 'Rest Days', description: 'Incorporate rest days into your routine to allow recovery.'),
                  //     Reusable(title: 'Balanced Diet', description: 'Support your fitness growth with a balanced and nutritious diet.'),
                  //     Reusable(title: 'Proper Form', description: "Pay attention to your body's signals and avoid overtraining"),
                  //
                  //   ],
                  // ),
                  child: ListView.builder(
                    itemCount: another.length,
                    itemBuilder: (context, index){
                      return Reusable(title: another[index]['title'] ?? 'no title', description: another[index]['description'] ?? 'no description');
                    }
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