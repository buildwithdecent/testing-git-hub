import 'package:flutter/material.dart';
import 'package:project_1/Create_Order/Both_Eye_Order.dart';
import 'package:project_1/Widgets/Dash_board_Reusable.dart';

class DashboardWelcome extends StatefulWidget {
  const DashboardWelcome({super.key});

  @override
  State<DashboardWelcome> createState() => _DashboardWelcomeState();
}

class _DashboardWelcomeState extends State<DashboardWelcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SizedBox(height: 20,),
                      Text(
                        'Welcome,',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 13,
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        'Dr Chris Emmanuel.',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),

                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 3,
                          offset: Offset(0, 1),
                        )
                      ],
                    ),
                    child: Icon(Icons.notifications_none_outlined, size: 28, color: Colors.black87),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Orders('Recent orders', Colors.black),
              SizedBox(height: 5,),
              DashBoardReusable(
              message: 'You are yet to make an order',
                icon: Icons.edit_calendar_outlined,
              buttonText: 'Create new order',
              onButtonPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BothEyeOrder()),
                );
              },
              ),
              SizedBox(height: 30,),
              Orders('special request summary', Colors.black),
              SizedBox(height: 5,),
              DashBoardReusable(
                icon: Icons.edit_calendar_outlined,
                message: 'You are yet to make a special request.',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget Orders(String title, Color color){
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: const Color(0xFFF9FBFC),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 1,
            offset: Offset(0, 1),
          )
        ],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        title,
        style: TextStyle(fontSize: 18, color: color),
      ),
    );
  }



  }

