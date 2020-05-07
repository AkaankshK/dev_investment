import 'package:devinvestment/CustomerFlow/utils/const.dart';
import 'package:devinvestment/Employee/screens/employye_login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail>with SingleTickerProviderStateMixin {
  TabController _tabController;
  String _email;
  @override
  void initState() {
    // TODO: implement initState
    _tabController = new TabController(length: 2, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/e.png"),
                fit: BoxFit.cover,
                //colorFilter: ColorFilter.mode(Color.fromRGBO(192, 234, 218,1).withOpacity(0.6), BlendMode.softLight),
              ),
            ),
          ),
          SafeArea(
            child: Container(
              color:Color.fromRGBO(222, 144, 59, 1) ,
              child: SizedBox(
                  height:50,
                  width: double.infinity,
                  child: Row(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.arrow_back,color: Colors.black87,),
                        onPressed: (){
                          Navigator.pop(context);
                        },
                      ),
                      SizedBox(
                        width: 80,
                      ),
                      Center(child: Text('Bank Details',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w400),)),
                    ],
                  )),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 75),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text('Name of Account Holder',textAlign: TextAlign.start,style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 40,
                              width: 300,
                              child: TextField(
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.black87),
                                onChanged: (value) {
                                  //fullname=value;
                                  //Do something with the user input.
                                },
                                decoration: kTextFieldDecoration.copyWith(hintText: ''),
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
                          child: Text('Account Number',textAlign: TextAlign.start,style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold),),
                        ),
                        SizedBox(
                          height: 0,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 40,
                            width: 300,
                            child: TextField(
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.black87),
                              onChanged: (value) {
                                //fullname=value;
                                //Do something with the user input.
                              },
                              decoration: kTextFieldDecoration.copyWith(hintText: ''),
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
                          child: Text('IFSC Code',textAlign: TextAlign.start,style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold),),
                        ),
                        SizedBox(
                          height: 0,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 40,
                            width: 300,
                            child: TextField(
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.black87),
                              onChanged: (value) {
                                //fullname=value;
                                //Do something with the user input.
                              },
                              decoration: kTextFieldDecoration.copyWith(hintText: ''),
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
                          child: Text('Branch Name',textAlign: TextAlign.start,style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold),),
                        ),
                        SizedBox(
                          height: 0,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            height: 38,
                            width: 300,
                            child: TextField(
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.black87),
                              onChanged: (value) {
                                //fullname=value;
                                //Do something with the user input.
                              },
                              decoration: kTextFieldDecoration.copyWith(hintText: ''),
                            ),
                          ),
                        ),
                      ],

                    ),

                  ),
                  Text('or',style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold,fontSize: 20)),
                  SizedBox(
                    height: 5,
                  ),
                  Text('Billing',style: TextStyle(color: Colors.white,fontSize: 20,letterSpacing: 1.5,fontWeight: FontWeight.bold),),
                  TabBar(
                    controller: _tabController,
                    tabs: [
                     Tab(child: Text('Mobile Payment',style: TextStyle(color: Colors.white),),),
//                      Text('+More',style: TextStyle(color: Colors.white),)
                    Tab(child:Text('+More',style: TextStyle(color: Colors.white),) ,)
                    ],
                  ),
                  Container(
                    height: 200,
                    child: TabBarView(
                      children: [
                        Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                height: 38,
                                width: 300,
                                child: TextField(
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.black87),
                                  onChanged: (value) {
                                    //fullname=value;
                                    //Do something with the user input.
                                  },
                                  decoration: kTextFieldDecoration.copyWith(hintText: 'Google Pay Number',hintStyle: TextStyle(color: Colors.white)

                                  ,fillColor: Color.fromRGBO(56, 56, 108, 1),filled: true,),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                height: 38,
                                width: 300,
                                child: TextField(
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.black87),
                                  onChanged: (value) {
                                    //fullname=value;
                                    //Do something with the user input.
                                  },
                                  decoration: kTextFieldDecoration.copyWith(hintText: 'PayPal Email Id',hintStyle: TextStyle(color: Colors.white)

                                    ,fillColor: Color.fromRGBO(56, 56, 108, 1),filled: true,),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                height: 38,
                                width: 300,
                                child: TextField(
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.black87),
                                  onChanged: (value) {
                                    //fullname=value;
                                    //Do something with the user input.
                                  },
                                  decoration: kTextFieldDecoration.copyWith(hintText: 'Paytm Number',hintStyle: TextStyle(color: Colors.white)

                                    ,fillColor: Color.fromRGBO(56, 56, 108, 1),filled: true,),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 5),
                              child: RaisedButton(onPressed: (){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => empLogin()));
                              },shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(9.0),
                                side: BorderSide(color:Colors.white ),),
                                color:Colors.white ,
                                child: Text('Save',style: TextStyle(color:  Color.fromRGBO(56, 56, 108, 1)),),
                              ),
                            ),

                          ],
                        ),
                        Text('more')
                      ],
                      controller: _tabController,
                    ),

                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
//Text('Bank Details',style: TextStyle(color:Colors.white),),