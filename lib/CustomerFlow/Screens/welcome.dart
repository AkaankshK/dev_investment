import 'package:devinvestment/CustomerFlow/Screens/forgot_password.dart';
import 'package:flutter/material.dart';
import 'package:devinvestment/CustomerFlow/utils/const.dart';
import 'package:devinvestment/CustomerFlow/utils/buttons.dart';
import 'package:devinvestment/OwnerLogin/HomePage.dart';
class welcome extends StatefulWidget {
  @override
  _welcomeState createState() => _welcomeState();
}

class _welcomeState extends State<welcome> {
  String _email;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/background.png"),
                fit: BoxFit.cover,
                //colorFilter: ColorFilter.mode(Color.fromRGBO(192, 234, 218,1).withOpacity(0.6), BlendMode.softLight),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                height: 170,
                width: 250,
                decoration: BoxDecoration(

                    image:DecorationImage(image: AssetImage('images/devlogo.png'))
                ),
              ),
              Text('Create Account',style: TextStyle(color:Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                  SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                    onSaved: (input) {
                      _email = input;
                    },
                    icon: Icon(Icons.email),
                    hint: "Your Email Address",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                    obsecure: true,
                    onSaved: (input) {
                      _email = input;
                    },
                    icon: Icon(Icons.email),
                    hint: "Password",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RoundButoon(color: Colors.deepPurple,f:(){
                  if(_email=='customer'){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    }
                  },name: 'Login',),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => password()));
                     // Navigator.pushReplacement(context, PageTransition(type: PageTransitionType.rightToLeft, child: signup()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 150),
                      child: new Text("Forgot Password?",textAlign: TextAlign.right,style: TextStyle(
                          fontWeight: FontWeight.w400,
                          //decoration: TextDecoration.underline
                        color: Colors.white,
                        fontSize: 15
                      ),),
                    ),
                  ),
                  SizedBox(height: 25,),
                  GestureDetector(
                    onTap: () {
                      //Navigator.pushReplacement(context, PageTransition(type: PageTransitionType.rightToLeft, child: signup()));
                    },
                    child: new Text("Don't have an account?Register",style: TextStyle(
                        fontWeight: FontWeight.w400,
                       // decoration: TextDecoration.underline
                      color: Colors.white,
                      fontSize: 18
                    ),),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
