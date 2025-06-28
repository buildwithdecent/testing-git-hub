import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:project_1/Authentication/Loginpage.dart';
import 'package:project_1/Authentication/Profile_Setup2.dart';
import 'package:project_1/Widgets/Base_Button.dart';
import 'package:project_1/Widgets/Build_progress_bar.dart';
import 'package:flutter/services.dart';

class OtpScreen extends StatefulWidget {
  OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  String _otp = '';

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey.shade300),
      ),
    );

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFF7F5FA),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: IconButton(
                      icon: Icon(Icons.arrow_back, color: Colors.black),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>ProfileSetup2()),
                        );
                      },
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        BuildProgressBar(active: true),
                        SizedBox(width: 8),
                        BuildProgressBar(active: true),
                        SizedBox(width: 8),
                        BuildProgressBar(active: true),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 32),
              Text(
                "We sent you an OTP",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "We sent you a four digit verification code on your mobile phone.",
                textAlign: TextAlign.left,
                style: TextStyle(color: Colors.black54, fontSize: 18),
              ),
              SizedBox(height: 40),
              Center(
                child: Pinput(
                  length: 4,
                  autofocus: true,
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  defaultPinTheme: defaultPinTheme,
                  focusedPinTheme: defaultPinTheme.copyWith(
                    decoration: defaultPinTheme.decoration!.copyWith(
                      border: Border.all(color: Color(0xFF114CA2)),
                    ),
                  ),
                  showCursor: true,
                  onCompleted: (pin) {
                    setState(() {
                      _otp = pin;
                    });
                    print("Entered OTP: $pin");
                  },
                  onChanged: (value) {
                    setState(() {
                      _otp = value;
                    });
                  },
                ),
              ),
              SizedBox(height: 30),
              Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Didn't get the code?",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                    SizedBox(width: 4),
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        minimumSize: Size(0, 0),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      onPressed: () {
                        print("Resend clicked");
                      },
                      child: Text(
                        "Click here to resend",
                        style: TextStyle(color: Color(0xFF114CA2), fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 80),
              Center(
                child: ElevatedButton(
                  onPressed: _otp.length == 4
                      ? () {
                    showSuccessDialog(context);
                  }
                      : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _otp.length == 4
                        ? Color(0xFF114CA2)
                        : Colors.grey.shade400,
                    minimumSize: Size(double.infinity, 56),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text(
                    "Verify",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Spacer(),
              SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
  void showSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          insetPadding: EdgeInsets.symmetric(horizontal: 30),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 10),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Text("🎉🎊✨", style: TextStyle(fontSize: 30)),
                    CircleAvatar(
                      backgroundColor: Colors.blue,
                      radius: 35,
                      child: Icon(Icons.check, color: Colors.white, size: 35),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Text(
                  "Thank you",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(
                  "Account creation successful!",
                  style: TextStyle(fontSize: 16, color: Colors.black54),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 50),
                BaseButton(
                  text: 'Proceed to home screen',
                  buttonColor: Colors.blue.shade100,
                  textColor: Colors.blue.shade900,
                  fontsize: 17,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>LoginPage()),
                    );
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }



}
