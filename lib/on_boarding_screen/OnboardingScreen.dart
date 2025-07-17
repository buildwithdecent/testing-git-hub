import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:project_1/Authentication/Loginpage.dart';
import 'package:project_1/Authentication/create_account.dart';
import 'package:project_1/Widgets/Base_Button.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final screenKey = GlobalKey<IntroductionScreenState>();

  Widget buildCurvedImageContainer(String imagePath) {
    return Padding(
      padding: const EdgeInsets.only(top: 50.0),
      child: Container(
        height: 290,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Color(0xFF7FD2F0), width: 4),
        ),
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  List<PageViewModel> rawPages() {
    return [
      buildPage(
        title: "Welcome to Lenses planet",
        body:
        "Our goal is to streamline and enhance your experience. We've fine-tuned the lens ordering process, ensuring it's not just easy but optimized for your needs",
        imagePath: 'assets/onboard1.png',
      ),
      buildPage(
        title: "Your order is a few taps away",
        body:
        "Order glasses, input prescriptions, and make special requests easily. Receive notifications about availability and pricing instantly",
        imagePath: 'assets/Onboard2.png',
      ),
      buildPage(
        title: "Seamless Reordering",
        body:
        "Access saved prescriptions to reorder swiftly. Say goodbye to repetitive data entry. Never Miss a Prescription!",
        imagePath: 'assets/onboard3.png',
      ),
    ];
  }

  PageViewModel buildPage({required String title, required String body, required String imagePath}) {
    return PageViewModel(
      titleWidget: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ),
      bodyWidget: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Text(
          body,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 15, color: Colors.black),
        ),
      ),
      image: buildCurvedImageContainer(imagePath),
      decoration: PageDecoration(
        imagePadding: EdgeInsets.zero,
        titlePadding: EdgeInsets.only(top: 10, bottom: 10),
        contentMargin: EdgeInsets.only(top: 16),
        bodyAlignment: Alignment.topCenter,
        imageAlignment: Alignment.topCenter,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEAF8FD),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: IntroductionScreen(
                key: screenKey,
                pages: rawPages(),
                showSkipButton: true,
                skip: Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: Text("SKIP", style: TextStyle(color: Color(0xFF114CA2), fontWeight: FontWeight.bold)),
                ),
                next: Icon(Icons.arrow_forward, color: Color(0xFF114CA2)),
                done: Text('DONE', style: TextStyle(color:Color(0xFF114CA2), fontWeight: FontWeight.bold )),
                onDone: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) =>CreateAccount(),
                  ));
                },
                showDoneButton: false,
                dotsDecorator: DotsDecorator(
                  size: Size(8, 8),
                  activeSize: Size(24, 8),
                  activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  activeColor: Color(0xFF114CA2),
                  color: Colors.grey.shade300,
                ),
              ),
            ),
            buildFooter(),
          ],
        ),
      ),
    );
  }

  Widget buildFooter() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFE0F4FB),
      ),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          BaseButton(
            text: 'Create account',
            buttonColor: Color(0xFF114CA2),
            textColor: Colors.white,
            fontsize: 20,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CreateAccount()),
              );
            },
          ),
          SizedBox(height: 14),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Already have an account? "),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                },
                child: Text(
                  "Log in",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF114CA2),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 5),
        ],
      ),
    );
  }

}
