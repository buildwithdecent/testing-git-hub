import 'package:flutter/material.dart';

class BothEyeOrder extends StatefulWidget {
  const BothEyeOrder({super.key});

  @override
  State<BothEyeOrder> createState() => _BothEyeOrderState();
}

class _BothEyeOrderState extends State<BothEyeOrder> {
  bool isRightSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),


              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFF7F5FA),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back, color: Colors.black),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  const SizedBox(width: 80),
                  const Expanded(
                    child: Text(
                      'New Order',
                      style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 8),
              const Divider(),
              const SizedBox(height: 20),

              Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: const Color(0xFFEEF8FC),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isRightSelected = true;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          decoration: BoxDecoration(
                            color: isRightSelected ? Colors.white : Color(0xFFEEF8FC),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Text(
                              'Right eye',
                              style: TextStyle(
                                color: Colors.black87,
                                fontWeight: isRightSelected ? FontWeight.bold : FontWeight.normal,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isRightSelected = false;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          decoration: BoxDecoration(
                            color: !isRightSelected ? Colors.white : Color(0xFFEEF8FC),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Text(
                              'Left eye',
                              style: TextStyle(
                                color: Colors.black87,
                                fontWeight: !isRightSelected ? FontWeight.bold : FontWeight.normal,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

            ],
          ),
        ),
      ),
    );
  }
}
