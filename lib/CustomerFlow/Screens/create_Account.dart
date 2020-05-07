import 'file:///D:/flutterProjects/dev_investment/lib/utils/buttons.dart';
import 'package:flutter/material.dart';
import 'file:///D:/flutterProjects/dev_investment/lib/utils/const.dart';
import 'package:flutter/cupertino.dart';

class account extends StatefulWidget {
  @override
  _accoutState createState() => _accoutState();
}

final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
bool _autoValidate = false;
String _value;

class _accoutState extends State<account> {
  Future _selectDate() async {
    DateTime picked = await showDatePicker(
        context: context,
        initialDate: new DateTime.now(),
        firstDate: new DateTime(2016),
        lastDate: new DateTime(2019));
    if (picked != null) setState(() => _value = picked.toString());
  }

  String _email;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
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
          Form(
              key: _formKey,
              autovalidate: _autoValidate,
              child: SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                      maxHeight: MediaQuery.of(context).size.height),
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 170,
                        width: 250,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('images/devlogo.png'))),
                      ),
                      Text(
                        'Create Account',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      Expanded(
                        child: CustomTextField(
                          onSaved: (input) {
                            _email = input;
                          },
                          icon: Icon(Icons.email),
                          hint: "Name",
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        child: CustomTextField(
                          onSaved: (input) {
                            _email = input;
                          },
                          hint: "Father Name",
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        child: CustomTextField(
                          onSaved: (input) {
                            _email = input;
                          },
                          icon: Icon(Icons.email),
                          hint: "Shop Address",
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        child: CustomTextField(
                          onSaved: (input) {
                            _email = input;
                          },
                          icon: Icon(Icons.email),
                          hint: "Mobile Number",
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        child: CustomTextField(
                          onSaved: (input) {
                            _email = input;
                          },
                          icon: Icon(Icons.email),
                          hint: "Email",
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        child: CustomTextField(
                          onSaved: (input) {
                            _email = input;
                          },
                          icon: Icon(Icons.email),
                          hint: "Address",
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        child: CustomTextField(
                          obsecure: true,
                          onSaved: (input) {
                            _email = input;
                          },
                          icon: Icon(Icons.email),
                          hint: "Password",
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        child: RoundButoon(
                          color: Colors.deepPurple,
                          f: () {},
                          name: 'Login',
                        ),
                      )
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
