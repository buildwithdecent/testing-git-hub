import 'package:flutter/material.dart';
import 'package:project_1/Create_Order/Both_Eye_Order.dart';
import 'package:project_1/Widgets/Base_Button.dart';

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
              // Top Row: Welcome Text + Notification Icon
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
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
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.notifications_none,
                    color: Colors.black87,
                    size: 28,
                  ),
                ],
              ),

              const SizedBox(height: 68),

              // Move On Button
              BaseButton(
                text: 'Move On',
                buttonColor: Colors.blue,
                textColor: Colors.black,
                fontsize: 23,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BothEyeOrder()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
