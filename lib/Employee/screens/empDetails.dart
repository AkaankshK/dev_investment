import 'package:devinvestment/Employee/screens/customerDetail.dart';
import 'package:flutter/material.dart';
import 'package:devinvestment/CustomerFlow/utils/const.dart';
import 'package:devinvestment/CustomerFlow/utils/buttons.dart';
class details extends StatefulWidget {
  @override
  _detailsState createState() => _detailsState();
}

class _detailsState extends State<details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Stack(
        children: [
          Container(
            color: Color.fromRGBO(37, 39, 78, 1),
            child: SafeArea(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/backy.png"),
                    fit: BoxFit.fill,
                    //colorFilter: ColorFilter.mode(Color.fromRGBO(192, 234, 218,1).withOpacity(0.6), BlendMode.softLight),
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Center(child: Text('Details',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text('Employee Name',textAlign: TextAlign.start,style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Material(
                              elevation: 10,
                              child: Container(
                                height: 38,
                                width: 300,
                                decoration: new BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10.0),
                                      bottomRight: Radius.circular(10.0)),
                                  border: new Border.all(
                                    //width: 5.0,
                                    color: Colors.white,
                                  ),
                                ),
                                child: TextField(
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.black87),
                                  onChanged: (value) {
                                    //fullname=value;
                                    //Do something with the user input.
                                  },
                                  decoration: kTextFieldDecoration.copyWith(hintText: '',enabledBorder: const OutlineInputBorder(
                                      borderSide: const BorderSide(color: Colors.white, width: 0.0),
                                      borderRadius: BorderRadius.all(Radius.circular(0.0)
                                      )),),
                                ),
                              ),
                            ),
                          ),
                        ],

                      ),

                    ),

                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text('Father Name',textAlign: TextAlign.start,style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold),),
                        ),
                        SizedBox(
                          height: 0,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Material(
                            elevation: 10,
                            child: Container(
                              height: 38,
                              width: 300,
                              decoration: new BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10.0),
                                    bottomRight: Radius.circular(10.0)),
                                border: new Border.all(
                                  //width: 5.0,
                                  color: Colors.white,
                                ),
                              ),
                              child: TextField(
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.black87),
                                onChanged: (value) {
                                  //fullname=value;
                                  //Do something with the user input.
                                },
                                decoration: kTextFieldDecoration.copyWith(hintText: '',enabledBorder: const OutlineInputBorder(
                                    borderSide: const BorderSide(color: Colors.white, width: 0.0),
                                    borderRadius: BorderRadius.all(Radius.circular(0.0)
                                    )),),
                              ),
                            ),
                          ),
                        ),
                      ],

                    ),

                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text('Mobile Number',textAlign: TextAlign.start,style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold),),
                        ),
                        SizedBox(
                          height: 0,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Material(
                            elevation: 10,
                            child: Container(
                              height: 38,
                              width: 300,
                              decoration: new BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10.0),
                                    bottomRight: Radius.circular(10.0)),
                                border: new Border.all(
                                  //width: 5.0,
                                  color: Colors.white,
                                ),
                              ),
                              child: TextField(
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.black87),
                                onChanged: (value) {
                                  //fullname=value;
                                  //Do something with the user input.
                                },
                                decoration: kTextFieldDecoration.copyWith(hintText: '',enabledBorder: const OutlineInputBorder(
                                    borderSide: const BorderSide(color: Colors.white, width: 0.0),
                                    borderRadius: BorderRadius.all(Radius.circular(0.0)
                                    )),),
                              ),
                            ),
                          ),
                        ),
                      ],

                    ),

                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text('Customer ID/Name/mobile Number',textAlign: TextAlign.start,style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold),),
                        ),
                        SizedBox(
                          height: 0,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Material(
                            elevation: 10,
                            child: Container(
                              height: 38,
                              width: 300,
                              decoration: new BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10.0),
                                    bottomRight: Radius.circular(10.0)),
                                border: new Border.all(
                                  //width: 5.0,
                                  color: Colors.white,
                                ),
                              ),
                              child: TextField(
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.black87),
                                onChanged: (value) {
                                  //fullname=value;
                                  //Do something with the user input.
                                },
                                decoration: kTextFieldDecoration.copyWith(hintText: '',enabledBorder: const OutlineInputBorder(
                                  borderSide: const BorderSide(color: Colors.white, width: 0.0),
                                  borderRadius: BorderRadius.all(Radius.circular(0.0)
                                  )),),
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                         child: RaisedButton(onPressed: (){
                            Navigator.push(
                                context, MaterialPageRoute(builder: (context) => CustomerDetail()));
                            },shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(9.0),
                              side: BorderSide(color:Color.fromRGBO(35, 39, 70, 1) ),),
                              color:Color.fromRGBO(35, 39, 70, 1) ,
                              child: Text('Submit',style: TextStyle(color:  Colors.white),),
                            ),
                          ),
                        ),

                      ],

                    ),

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
