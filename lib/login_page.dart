import 'package:flutter/material.dart';
import 'package:ui_second/Homepage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(253, 79, 68, 144),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 100),
          const Text("Login",style: TextStyle(color: Color.fromARGB(255, 247, 243, 243),fontSize:40,fontWeight: FontWeight.bold)),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: SizedBox(height: 100,),
          ),
           
          SizedBox(
            width: 400,
          child: Column(mainAxisAlignment: MainAxisAlignment.start,
            children: [ const Padding(padding: EdgeInsets.all(1)),const Align(alignment: Alignment.topLeft,
            child: Text("Email",style: TextStyle(color: Colors.white,fontSize: 20),)),
              
              const TextField(decoration: InputDecoration(prefixIcon:Icon(Icons.email),fillColor: Colors.white,filled: true,
             hintText:"Enter your Email Id",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(40)))),),
                  const SizedBox(height: 30,),
                  const Align(alignment: Alignment.topLeft,
                    child: Text("Password",style: TextStyle(color: Colors.white,fontSize: 20),)),
                  const SizedBox(width: 400,
                  child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [TextField(decoration: InputDecoration(prefixIcon: Icon(Icons.password),fillColor: Colors.white,filled: true,
                  hintText:"Enter your password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)))),)],),),
                    const SizedBox(height: 80,),
                    SizedBox(
                  height: 60,
                  width: 250,
                    child: MaterialButton(color: Colors.black ,shape:const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                    onPressed:(){Navigator.push(context,MaterialPageRoute(builder: (_) =>const Homepage() ));},child: const Center(
                    child: Text("Login",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,color: Colors.white),),
                    ),),
                    ),
                    const SizedBox(height: 5,),
                    const SizedBox(
                    child: Text("forgetPassword",style: TextStyle(color: Colors.white),),
                    ),

            ],
          ),)
        ],
      ),
      ),
    );
  }
}