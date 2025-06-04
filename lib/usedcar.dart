import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UsedCar extends StatelessWidget{
  const UsedCar({super.key});

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.white,
    appBar: AppBar(
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios, size: 24,)),
      centerTitle: true,
      title: Text('Add Nigeria used car', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 19, color: Colors.black),),
    ),
    body: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.fromLTRB(15, 40, 15, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildTextField(label: 'Car registration number', hint: 'R31122 55', fieldName: 'Enter your car registration number'),
            // Text(
            //   'Enter your car registration number',
            //   style: TextStyle(
            //     fontWeight: FontWeight.w400,
            //     fontSize: 15,
            //     color: Colors.black,),),
            // SizedBox(height: 17),
          //  buildTextField('car registration number', 'R31122 55'),
            SizedBox(height: 24),
            // Text(
            //   'Enter VIN number',
            //   style: TextStyle(
            //     fontWeight: FontWeight.w400,
            //     fontSize: 15,
            //     color: Colors.black,),),
            SizedBox(height: 17 ),
            buildTextField(  label: 'Car VIN number', hint: '31122 56', fieldName: 'Enter VIN number'),
            SizedBox(height: 24),
            Text(
              'Title document',
              style: TextStyle(
                fontWeight: FontWeight.w200,
                fontSize: 15,
                color: Colors.black,),),
            SizedBox(height: 22,),
        buildImageUpload(
          'Upload Title document\n(png or jpeg)',
              () {},
          Icon(Icons.drive_folder_upload_outlined, color: Colors.black54),
        ),
            SizedBox(height: 24,),
            Text(
              'Custom clearance',
              style: TextStyle(
                fontWeight: FontWeight.w100,
                fontSize: 15,
                color: Colors.black,),),
            SizedBox(height: 22,),
            buildImageUpload('Upload custom clearance \n(png or jpeg)',   () {},
              Icon(Icons.drive_folder_upload_outlined, color: Colors.black54),),
            SizedBox(height: 22,),
            ElevatedButton(
              onPressed: () {},
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
            SizedBox(height: 20,)

        ],

        ),
      ),
    ),

  );
  }

  Widget buildTextField({required String label, required String hint, required fieldName}){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text( fieldName,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 15,
            color: Colors.black,),),
        SizedBox(height: 17),
        TextField(
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
        ),
      ],
    );
  }

  Widget buildImageUpload(String label, VoidCallback onPressed, Icon icon,) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(color: Colors.grey.shade300),
        ),
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              textAlign: TextAlign.center,
              label,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.black),),),
          icon,
        ],
      ),
    );
  }



}