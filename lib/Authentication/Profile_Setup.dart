
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_1/Authentication/Profile_Setup2.dart';
import 'package:project_1/Widgets/Base_Button.dart';
import '../Widgets/Build_progress_bar.dart';
import '../Widgets/Confirm_password_input.dart';
import '../Widgets/password_input.dart';
import '../Widgets/reusable_dropdown.dart';

class ProfileSetup1 extends StatefulWidget {
  const ProfileSetup1({super.key});

  @override
  State<ProfileSetup1> createState() => _ProfileSetup1State();
}

class _ProfileSetup1State extends State<ProfileSetup1> {
  bool isProfessionsDisplay = false;
  bool isFullnameDisplay = false;

  TextEditingController professionController = TextEditingController();
  TextEditingController FullNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();




  String selectedPrefix = "Dr";

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 60),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          BuildProgressBar(active: true),
                          SizedBox(width: 8),
                          BuildProgressBar(active: true),
                          SizedBox(width: 8),
                          BuildProgressBar(),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('Profile setup',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 28,
                                  color: Colors.black)),
                          Row(
                            children: [
                              Text('1/',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black)),
                              Text('2',
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey)),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 15),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        color: const Color(0xFFEEF8FC),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 18),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Profession',
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18)),
                              const SizedBox(height: 6),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isProfessionsDisplay =
                                    !isProfessionsDisplay;
                                  });
                                },
                                child: AbsorbPointer(
                                  child: TextFormField(
                                    controller: professionController,
                                    decoration: InputDecoration(
                                      suffixIcon: Icon(
                                        isProfessionsDisplay
                                            ? Icons.arrow_drop_up
                                            : Icons.arrow_drop_down,
                                        color: Colors.grey,
                                      ),
                                      hintText: 'Select your profession',
                                      hintStyle: TextStyle(color: Colors.grey),
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        borderSide: BorderSide.none,
                                      ),
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please select a profession';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ),
                              AnimatedSwitcher(
                                duration: Duration(milliseconds: 200),
                                child: isProfessionsDisplay
                                    ? Column(
                                  children: [
                                    SizedBox(height: 8),
                                    DropdownChecklist(
                                      key: ValueKey("professionDropdown"),
                                      title: 'Profession',
                                      items: [
                                        'Optometrist',
                                        'Optician',
                                        'Ophthalmologist',
                                        'Agents'
                                      ],
                                      onSelectionChanged: (selectedList) {
                                        setState(() {
                                          professionController.text = selectedList.isNotEmpty
                                              ? selectedList.first
                                              : '';
                                          isProfessionsDisplay = false;
                                        });
                                      },
                                    ),
                                  ],
                                )
                                    : const SizedBox.shrink(),
                              ),
                              const SizedBox(height: 20),


                              Text('Full name',
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18)),
                              SizedBox(height: 6),
                              TextFormField(
                                controller: FullNameController,
                                enableSuggestions: false,
                                autocorrect: false,
                                decoration: InputDecoration(
                                  prefixIcon: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isFullnameDisplay = !isFullnameDisplay;
                                      });
                                    },
                                    child: Container(
                                      width: 80,
                                      alignment: Alignment.center,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            selectedPrefix,
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.grey),
                                          ),
                                          Icon(Icons.arrow_drop_down,
                                              color: Colors.grey),
                                        ],
                                      ),
                                    ),
                                  ),
                                  filled: true,
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                                validator: (value) {
                                  if (value == null || value.trim().isEmpty) {
                                    return 'Please enter your name';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(height: 10),
                              if (isFullnameDisplay)
                                DropdownChecklist(
                                  key: ValueKey("prefixDropdown"),
                                  title: 'Prefix',
                                  items: ['Dr', 'Mr', 'Mrs', 'Miss'],
                                  onSelectionChanged: (selectedList) {
                                    if (selectedList.isNotEmpty) {
                                      setState(() {
                                        selectedPrefix = selectedList.first;
                                        isFullnameDisplay = false;
                                      });
                                    }
                                  },
                                ),
                             const SizedBox(height: 20,),
                              Text('Phone number', style: TextStyle(fontSize: 18, color: Colors.black87),),
                              SizedBox(height: 10,),
                              TextField(
                                enableSuggestions: false,
                                autocorrect: false,
                                keyboardType: TextInputType.number,
                                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                                decoration: InputDecoration(
                                  hintText: 'You will get an OTP',
                                  hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                                  filled: true,
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(8),
                                  borderSide:BorderSide.none),
                                ),
                              ),
                              const SizedBox(height: 20,),
                              Text('Email address', style: TextStyle(fontSize: 18, color: Colors.black87),),
                              SizedBox(height: 10,),
                              TextField(
                                enableSuggestions: false,
                                autocorrect: false,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(8),
                                      borderSide:BorderSide.none),
                                ),
                              ),
                              SizedBox(height: 20,),

                              Text('Create password',
                                  style: TextStyle(color: Colors.black87, fontSize: 18)),
                              const SizedBox(height: 6),
                              PasswordInputField(controller: passwordController),
                              SizedBox(height: 20),
                              Text('Confirm password',
                                  style: TextStyle(color: Colors.black87, fontSize: 18)),
                              const SizedBox(height: 6),
                              ConfirmPasswordField(
                                controller: confirmPasswordController,
                                passwordController: passwordController,
                              ),


                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                BaseButton(
                  text: 'Continue',
                  buttonColor: const Color(0xFF114CA2),
                  textColor: Colors.white,
                  fontsize: 20,
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProfileSetup2()),
                      );
                    }
                  },
                ),
                SizedBox(height: 10,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
