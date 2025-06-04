import 'package:flutter/material.dart';

import 'chat.dart';


class StackDemo extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(),
      body :
        Center(
          child: Stack(

            children: [

              Container(
                height: 200,
                width: 50,
                color: Colors.red,
              ),

              Expanded(
                child: Container(
                  height: 100,
                  width: 50,
                  color: Colors.blue,
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFFC107), // Yellow
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => CenterText()
                  ));
                },
                child: const Text("Next Page", style: TextStyle(fontSize: 16)),
              ),
            ],
          ),
        )
    );
  }
}


class Hey extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('wsg?', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),)

          ],
        ),
      ),
    );
  }

}





class MyLoginApp extends StatefulWidget {
  const MyLoginApp({super.key});



  @override
  State<MyLoginApp> createState() => _MyLoginAppState();
}

class _MyLoginAppState extends State<MyLoginApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [


                  Image.asset('assets/image1.jpeg',  height: 28, width: 29,),

                  Text('Login',textAlign: TextAlign.center,selectionColor: Colors.black,style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
                  SizedBox(height: 8),
                  Text(
                    'You must login into your\naccount to continue',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  SizedBox(height: 100),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 10, 40, 0),
                    child: TextField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(8.0) ,
                          label: Text('Email'),
                          hintText: 'Enter your e-mail',
                          border: OutlineInputBorder(
                            borderRadius:   BorderRadius.circular(10),
                          )
                      ),
                    ),
                  ),


                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 10, 40, 0),
                    child: TextField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(8.0) ,
                          label: Text('Password'),
                          hintText: 'Enter your password',
                          suffixIcon: Icon(Icons.visibility_off),
                          border: OutlineInputBorder(
                            borderRadius:   BorderRadius.circular(10),
                          )
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 10, 40, 0),
                    child: SizedBox(
                      width: double.infinity,
                      height: 50,

                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFFFC107), // Yellow
                          foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                        onPressed: () {
                          print('object');
                          Navigator.push(context, MaterialPageRoute(
                          builder: (context) => StackDemo()
                          ));
                        },
                        child: const Text("Login", style: TextStyle(fontSize: 16)),
                      ),
                    ),
                  ),



                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(40, 10, 40, 0),
                        child: Container(
                          color: Colors.white,
                          width: 90, // Adjust width for better text visibility
                          child: Center(
                            child: Text(
                              'Remember Me',
                              style: TextStyle(color: Colors.black, fontSize: 12), // Changed text color to white for visibility
                            ),
                          ),
                        ),
                      ),

                      SizedBox(width: 20),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(40, 10, 40, 0),
                        child:  Container(
                          color: Colors.white,
                          width: 90, // Adjusted width for better text fitting
                          child: Center(
                            child: Text(
                              'Forgot Password',
                              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 11), // Changed text color for contrast
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 10, 40, 0),
                    child: Row(
                      children: [
                        Expanded(child: Divider()),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text('or'),
                        ),
                        Expanded(child: Divider()),
                      ],
                    ),
                  ),

                  SizedBox(height: 50),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Container(
                            height: 48,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGZVtYEfCrZtDbW3iwgNnwb0R7gbul8lSrsw&s',
                                height: 24,
                                width: 24,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: Container(
                            height: 48,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Icon(Icons.apple, size: 28),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 20),

                  Text.rich(
                    TextSpan(
                      text: 'Not Registered? ',
                      style: TextStyle(color: Colors.black54),
                      children: [
                        TextSpan(
                          text: 'Register',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),



                ]
            ),
          ),
        ),
      ),
    );
  }
}