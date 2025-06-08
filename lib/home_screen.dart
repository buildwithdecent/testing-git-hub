

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'AnotherApp.dart';
import 'SimpleApp.dart';

class HomeScreen extends StatefulWidget{
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('assets/image1.jpeg'),
                      ),
                      Container(
                        height: 18,
                        width: 18,
                        child: Icon(
                          CupertinoIcons.checkmark_seal_fill,
                          size: 12,
                          color: Color(0xFF0C1A30),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 14),
                  Text.rich(
                    TextSpan(
                      text: 'Hi, Bell restaurant ',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF0C1A30),
                      ),
                      children: [
                        TextSpan(text: '👋'),
                      ],
                    ),
                  ),
                  Spacer(),
                  Icon(
                    CupertinoIcons.bell,
                    color: Color(0xFF0C1A30),
                  )
                ],
              ),
              SizedBox(height: 6),
              Padding(
                padding: const EdgeInsets.only(left: 74),
                child: Text(
                  'Ready for business!',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: 120,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Color(0xFF0C1A30),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Total revenue',
                            style: TextStyle(fontSize: 16, color: Colors.white70),
                          ),
                          SizedBox(height: 12),
                          Text(
                            '₦100,000',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          'View',
                          style: TextStyle(fontSize: 14, color: Colors.black45),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BuildRevenue('Reservation', Icons.calendar_today_outlined, Colors.white),
                  BuildRevenue('Orders', Icons.description, Colors.white),
                ],
              ),
              SizedBox(height: 20,),
              GestureDetector(
                onTap:() {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => AnotherApp(),
                  ));
                },
                child:
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 16,
                            backgroundImage: AssetImage('assets/image1.jpeg'),
                          ),
                          SizedBox(width: 6),
                          Text(
                            'John Micheal',
                            style: TextStyle(fontSize: 14, color: Colors.black),
                          ),
                        ],
                      ),
                      SizedBox(height: 6),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Reservation date: 20 - 10 - 2024',
                            style: TextStyle(fontSize: 13, color: Colors.black),
                          ),
                          Text(
                            'Guest no: 4',
                            style: TextStyle(fontSize: 13, color: Colors.black),
                          ),
                        ],
                      ),
                      SizedBox(height: 6,),
                      Row(
                        children: [
                          Icon(CupertinoIcons.location_solid, size: 16,),
                          SizedBox(width: 12,),
                          Text('Bell restaurant street',
                            style: TextStyle(fontSize: 13, color: Colors.black),),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 14,),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 16,
                          backgroundImage: AssetImage('assets/image1.jpeg'),
                        ),
                        SizedBox(width: 6),
                        Text(
                          'John Micheal',
                          style: TextStyle(fontSize: 14, color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(height: 6),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Reservation date: 20 - 10 - 2024',
                          style: TextStyle(fontSize: 13, color: Colors.black),
                        ),
                        Text(
                          'Guest no: 4',
                          style: TextStyle(fontSize: 13, color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(height: 6,),
                    Row(
                      children: [
                        Icon(CupertinoIcons.location_solid, size: 16,),
                        SizedBox(width: 12,),
                        Text('Bell restaurant street',
                          style: TextStyle(fontSize: 13, color: Colors.black),),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Center(
                child: GestureDetector(
                  onTap:() {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => SimpleApp(),
                    ));
                  },
                  child:    Text('See more', style: TextStyle(fontSize: 14, color: Colors.black),),
                ),
              ),
              SizedBox(height: 10,),
            ],
          ),

        ),
      ),
      backgroundColor: Colors.white,
    );
  }

  Widget BuildRevenue(String title, IconData icon, Color color) {
    return Column(
      children: [
        Row(
          children: [
            Icon(icon, size: 20, color: Colors.grey),
            SizedBox(width: 6),
            Text(
              title,
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w600,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ],
    );
  }
}