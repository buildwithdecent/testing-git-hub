import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_1/usedcar.dart';

class MyCarApp extends StatefulWidget {
  const MyCarApp({super.key});

  @override
  State<MyCarApp> createState() => _MyCarAppState();
}

class _MyCarAppState extends State<MyCarApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios, size: 24,)),
        centerTitle: true,
        title: Text('Car details', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 19, color: Colors.black),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 40, 15, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              buildTextField('car name', 'Ferrari 2012'),
              SizedBox(height: 17,),
              buildTextField('car mileage','Miles per gallon or kilometres per liter'),
              SizedBox(height: 24,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Car price', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w100, color: Colors.black),),
                ],
              ),
              SizedBox(height: 22,),
              buildTextField('car--price', '#20,000,000'),
              SizedBox(height: 24,),
              Row(
                children: [
                  Text('Car specifications', style: TextStyle(fontWeight: FontWeight.w100, fontSize: 15, color: Colors.black),),
                ],
              ),
              SizedBox(height: 22,),
              buildTextField('Engine turbo', '2.0L turbo'),
              SizedBox(height: 17,),
              buildTextField('Fuel type', 'Gasoline'),
              SizedBox(height: 17,),
              buildTextField('Drive type', 'AWDv'),
              SizedBox(height: 20,),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => usedcar()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF001437),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Container(
                  height: 50,
                  padding: EdgeInsets.all(4),
                  alignment: Alignment.center,
                  child: Text(
                    'Continue',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 15,),
            ],
          ),

        ),
      ),

    );
  }
  Widget buildTextField(String label, String hint,){
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(
          color: Colors.grey,
          fontSize: 17,
        ),
        hintText: hint,
        hintStyle: TextStyle(
          color: Colors.black,
          fontSize: 14,
          fontWeight: FontWeight.w100,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(13),
          borderSide: BorderSide(color: Colors.black),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(13),
          borderSide: BorderSide(color: Colors.grey.shade600
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
      ),
    );
  }



}