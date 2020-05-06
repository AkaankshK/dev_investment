import 'package:flutter/material.dart';
import 'package:devinvestment/CustomerFlow/utils/const.dart';
import 'package:devinvestment/CustomerFlow/utils/buttons.dart';
class password extends StatefulWidget {
  @override
  _passwordState createState() => _passwordState();
}

class _passwordState extends State<password> {
  int id=1;
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
                  Text('Forgot Password',style: TextStyle(color:Colors.white,fontSize: 27,fontWeight: FontWeight.bold),),
                  SizedBox(
                    height: 15,
                  ),
                  Text('Please Enter Your adhar Number',style: TextStyle(color: Colors.white,fontSize: 15),),
                  SizedBox(
                    height: 15,
                  ),
                  CustomTextField(
                    onSaved: (input) {
                      _email = input;
                    },
                    icon: Icon(Icons.email),
                    hint: "Phone number",
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Radio<dynamic>(
                        hoverColor: Colors.white,
                        activeColor: Colors.white,
                        value: 1,
                        groupValue: id,
                        onChanged: (val) {
                          setState(() {
                            // radioButtonItem = 'ONE';
                            id = 1;
                          });
                        },
                      ),
                      Text(
                        'PIN',
                        style: new TextStyle(fontSize: 17.0,color: Colors.white),
                      ),

                      Radio(
                        activeColor: Colors.white,

                        value: 2,
                        groupValue: id,
                        onChanged: (val) {
                          setState(() {
                            // radioButtonItem = 'TWO';
                            id = 2;
                          });
                        },
                      ),
                      Text(
                        'Password',
                        style: new TextStyle(
                            fontSize: 17.0,
                            color: Colors.white
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 20,
                  ),
                  RoundButoon(color: Colors.deepPurple,f:(){},name: 'Reset',),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
