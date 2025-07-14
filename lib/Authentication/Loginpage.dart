import 'package:flutter/material.dart';
import 'package:project_1/DashBoard/DashBoard_welcome.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                 SizedBox(height: 80),
                 Text(
                  'Welcome back',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 29,
                    color: Colors.black,
                  ),
                ),
               SizedBox(height: 50),
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color:  Color(0xFFEEF8FC),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text(
                        'Email/phone number',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                      SizedBox(height: 6),
                      TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding:  EdgeInsets.symmetric(horizontal: 12),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                       SizedBox(height: 20),
                    Text(
                        'Password',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                       SizedBox(height: 6),
                      TextField(
                        obscureText: _obscureText,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding:  EdgeInsets.symmetric(horizontal: 12),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                _obscureText = !_obscureText;
                              });
                            },
                            child: TextButton(
                              onPressed: () {
                                setState(() {
                                  _obscureText = !_obscureText;
                                });
                              },
                              child: Text(
                                _obscureText ? "Show" : "Hide",
                                style: TextStyle(color: Colors.blue),
                              ),
                            ),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forgot password?',
                          style: TextStyle(
                            color: Color(0xFF114CA2),
                            fontSize: 14,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
            SizedBox(height: 230,),

            buildCreateAccountButton(
                    iconShow: true,
                    icon: Icons.g_translate,
                    text: "Log in with Google",
                    buttonColor: Color(0xFF114CA2),
                    textColor: Colors.white,
                    onPressed: () {
                    }, fontSize: 20,
                ),
                SizedBox(height: 15),

            buildCreateAccountButton(
                    iconShow: true,
                    icon: Icons.email,
                    text: "Log in with Email",
                    buttonColor: Colors.white,
                    textColor: Color(0xFF114CA2),
                    borderColor: Color(0xFF114CA2),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => DashboardWelcome()),
                      );
                    }, fontSize: 20,
                  ),

              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildCreateAccountButton({
    required IconData icon,
    required String text,
    required Color buttonColor,
    required Color textColor,
    required double fontSize,
    Color? borderColor,
    required VoidCallback onPressed,
    required bool iconShow,
  }) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: iconShow ? Icon(icon, color: textColor) : const SizedBox.shrink(),
      label: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: fontSize,
        ),
      ),
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 50),
        backgroundColor: buttonColor,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
          side: borderColor != null
              ? BorderSide(color: borderColor)
              : BorderSide.none,
        ),
      ),
    );
  }
}
