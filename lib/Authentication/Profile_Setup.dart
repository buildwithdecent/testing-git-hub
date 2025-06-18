import 'package:flutter/material.dart';
import 'package:project_1/Authentication/Profile_Setup2.dart';
import 'package:project_1/Widgets/Base_Button.dart';


import '../Widgets/Build_progress_bar.dart';
import '../Widgets/reusable_dropdown.dart';

class ProfileSetup1 extends StatefulWidget{
  const ProfileSetup1({super.key});


  @override
  State<ProfileSetup1> createState() => _ProfileSetup1State();
}

class _ProfileSetup1State extends State<ProfileSetup1> {
  bool isProfessionsDisplay = false;
  TextEditingController professionController =TextEditingController();
  TextEditingController FullNameController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(child:
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  SizedBox(height: 60,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BuildProgressBar(active: true,),
                      SizedBox(width: 8),
                      BuildProgressBar(active: true,),
                      SizedBox(width: 8),
                      BuildProgressBar(),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Profile setup', style: TextStyle(fontWeight: FontWeight
                          .bold, fontSize: 28, color: Colors.black),),
                      Row(
                        children: [
                          Text('1/', style: TextStyle(fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),), Text('2',
                            style: TextStyle(fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),)
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 15),
                  Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    color: Color(0xFFEEF8FC),
                    child: Padding(padding: EdgeInsets.symmetric(vertical: 18),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Profession', style: TextStyle(
                              color: Colors.black87, fontSize: 18),),
                          SizedBox(height: 6,),
                          TextField(
                            controller: professionController,
                            enableSuggestions: false,
                            autocorrect: false,
                            decoration: InputDecoration(
                              suffixIcon: GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      isProfessionsDisplay = !isProfessionsDisplay;
                                    });
                                  },
                                  child: Icon(isProfessionsDisplay? Icons.arrow_drop_up : Icons.arrow_drop_down)),
                              suffixIconColor: Colors.grey,
                              hintText: "Select your profession",
                              hintStyle: TextStyle(color: Colors.grey),
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(8),borderSide: BorderSide.none),
                            ),
                          ),
            SizedBox(height: 10,),

                          isProfessionsDisplay ?
                          DropdownChecklist(
                            title: 'Profession',
                            items: ['Optometrist', 'Optician', 'Ophthalmologist', 'Agents'],
                            onSelectionChanged: (selectedList) {
                           setState(() {
                             selectedList[0] = professionController.text;
                           });
                            },
                          ): Container(),
                          SizedBox(height: 20,),

                          //////////////////////////

                          Text('Full name', style: TextStyle(
                              color: Colors.black87, fontSize: 18),),
                          SizedBox(height: 6,),
                          TextField(
                            enableSuggestions: false,
                            autocorrect: false,
                            decoration: InputDecoration(
                             // suffixIcon: GestureDetector(
                                  // onTap: (){
                                  //   setState(() {
                                  //     isProfessionsDisplay = !isProfessionsDisplay;
                                  //   });
                                  // },
                                  // child: Icon(isProfessionsDisplay? Icons.arrow_drop_up : Icons.arrow_drop_down)),

                              prefixIcon: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(

  mainAxisSize: MainAxisSize.min,
                                  children: [Text('Dr', style: TextStyle(fontSize: 15,color: Colors.grey),),SizedBox(width: 5,), Icon(Icons.arrow_drop_down, size: 28,color: Colors.grey,),
                                  //   VerticalDivider(
                                  //   color: Colors.black,
                                  //   thickness: 1,
                                  //   //width: 20,
                                  //   indent: 10,
                                  //   endIndent: 10,
                                  // )
                                  ],
                                ),
                              ),

                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(8),borderSide: BorderSide.none),
                            ),
                          ),
                          SizedBox(height: 10,),

                          isProfessionsDisplay ?
                          DropdownChecklist(
                            title: 'Profession',
                            items: ['Dr', 'Mr', 'Mrs', 'Miss'],
                            onSelectionChanged: (selectedList) {
                              print("Selected items: $selectedList");
                            },
                          ): Container(),




                        ],
                      ),


                    ),


                  ),


                ],
              ),
            ),
            SizedBox(height: 40,),
            BaseButton(text: 'Continue', buttonColor: Color(0xFF114CA2), textColor: Colors.white, fontsize: 20, onPressed:() {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) =>ProfileSetup2(),
              ));
            },),
          ],
        )),
      ),

    );
  }
  
}