import 'package:devinvestment/CustomerFlow/Screens/Bank_Detail.dart';
import 'package:devinvestment/utils/buttons.dart';
import 'package:devinvestment/utils/const.dart';
import 'package:flutter/material.dart';

class Request extends StatefulWidget {
  @override
  _RequestState createState() => _RequestState();
}

class _RequestState extends State<Request> {
  String _email;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/back2.png"),
                fit: BoxFit.cover,
                //colorFilter: ColorFilter.mode(Color.fromRGBO(192, 234, 218,1).withOpacity(0.6), BlendMode.softLight),
              ),
            ),
          ),
          SafeArea(
            child: Container(
              color: Color.fromRGBO(222, 144, 59, 1),
              child: SizedBox(
                  height: 70,
                  width: double.infinity,
                  child: Center(
                      child: Text(
                    'Request Form',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                  ))),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SafeArea(
                  child: Container(
                    color: Color.fromRGBO(222, 144, 59, 1),
                    child: SizedBox(
                        height: 60,
                        width: double.infinity,
                        child: Center(
                            child: Text(
                          'Request Form',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                        ))),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                CustomTextField(
                  onSaved: (input) {
                    _email = input;
                  },
                  //icon: Icon(Icons.email),
                  hint: "Loan needed",
                ),
                SizedBox(
                  height: 15,
                ),
                Row(children: [
                  Expanded(
                    child: CustomTextField(
                      onSaved: (input) {
                        _email = input;
                      },
                      // icon: Icon(Icons.email),
                      hint: "Needs Before",
                    ),
                  ),
                  Expanded(
                    child: CustomTextField(
                      onSaved: (input) {
                        _email = input;
                      },
                      // icon: Icon(Icons.email),
                      hint: "Loan Type",
                    ),
                  )
                ]),
                SizedBox(
                  height: 15,
                ),
                CustomTextField(
                  onSaved: (input) {
                    _email = input;
                  },
                  //icon: Icon(Icons.email),
                  hint: "Audio Record",
                ),
                SizedBox(
                  height: 15,
                ),
                CustomTextField(
                  onSaved: (input) {
                    _email = input;
                  },
                  //icon: Icon(Icons.email),
                  hint: "Select the Date",
                ),
                SizedBox(
                  height: 15,
                ),
                CustomTextField(
                  onSaved: (input) {
                    _email = input;
                  },
                  //icon: Icon(Icons.email),
                  hint: "Shop Address",
                ),
                SizedBox(
                  height: 15,
                ),
                CustomTextField(
                  onSaved: (input) {
                    _email = input;
                  },
                  //icon: Icon(Icons.email),
                  hint: "Mobile Number",
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 70, right: 70),
                  child: RoundButoon(
                    color: Color.fromRGBO(222, 144, 59, 1),
                    f: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Detail()));
                    },
                    name: 'Next',
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
