
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListDemo extends StatelessWidget{
  ListDemo({super.key});

  Map<String, dynamic>  person1 = {'height' : '20m', 'gender': 'male', 'age': 30};
  Map<dynamic, String> person2 = {};

  int myAge = 30;
  String name = 'John';

  List<dynamic> example1 = ['John', 'Mary', 'Jonathan,', 10];

   List<Map<String, dynamic>> people = [{'name':"John", 'age': 20, 'dob': 'September'},
     {'name':"Mary", 'age': 25, 'dob': 'June'},
     {'name':"Gideon", 'age': 26, 'dob': 'July'}
   ];


  @override
  Widget build(BuildContext context) {
   return Scaffold();
  }

}