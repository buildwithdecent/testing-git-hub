import 'package:flutter/material.dart';
import 'package:project_1/Authentication/Enter_email.dart';
import 'package:project_1/Widgets/Build_progress_bar.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Padding(
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
                SizedBox(height: 100),

                Text(
                  "Get started with us",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),

                Text(
                  "Create an account with us using your Google account.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 100),


                buildCreateAccountButton(
                  iconShow: true,
                  icon: Icons.g_translate,
                  text: "Sign up with Google",
                  buttonColor: Color(0xFF114CA2),
                  textColor: Colors.white,
                  onPressed: () {
                  }, fontSize: 20,
                ),
                SizedBox(height: 15),
                buildCreateAccountButton(
                  iconShow: true,
                  icon: Icons.email,
                  text: "Sign up with Email",
                  buttonColor: Colors.white,
                  textColor: Color(0xFF114CA2),
                  borderColor: Color(0xFF114CA2),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) =>EnterEmail(),
                    ));
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
