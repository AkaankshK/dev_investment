
import 'package:devinvestment/OwnerLogin/AddParty/AddParty.dart';
import 'package:devinvestment/OwnerLogin/CashBank.dart';
import 'package:devinvestment/OwnerLogin/ExpensesPage.dart';
import 'package:devinvestment/OwnerLogin/LoanRequest.dart';
import 'package:devinvestment/OwnerLogin/ViewLoanDetails.dart';
import 'package:devinvestment/dummy.dart';
import 'package:flutter/material.dart';
Map<int, Color> colors =
{
  50:Color.fromRGBO(136,14,79, .1),
  100:Color.fromRGBO(136,14,79, .2),
  200:Color.fromRGBO(136,14,79, .3),
  300:Color.fromRGBO(136,14,79, .4),
  400:Color.fromRGBO(136,14,79, .5),
  500:Color.fromRGBO(136,14,79, .6),
  600:Color.fromRGBO(136,14,79, .7),
  700:Color.fromRGBO(136,14,79, .8),
  800:Color.fromRGBO(136,14,79, .9),
  900:Color.fromRGBO(136,14,79, 1),
};

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  MaterialColor dyellow = MaterialColor(0xffe0903b,colors);
  MaterialColor dblue = MaterialColor(0xff25274e,colors);
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        actions: [
          FlatButton(
            child: Icon(Icons.share,color: Colors.black,),
            onPressed: (){},
          ),
//          FlatButton(
//            child: Container(
//              height: 50,
//              width: 50,
//              child: Image.asset("assets/11.png"),
//            ),
//            onPressed: (){},
//          ),
          FlatButton(
            child: Icon(Icons.notifications,color: Colors.black,),
            onPressed: (){},
          ),
//
        ],
        title: SizedBox(
          height: 50,
          width: 150,
          child: TextField(

            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                hintText: "Search",
              suffixIcon: Icon(
                Icons.search,

              ),
            ),
          ),
        ),
        backgroundColor: dyellow,
        elevation: 0,

      ),
      drawer: getDrawer(),
      body: getBody(),
    );
  }

  getDrawer() {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
          image: AssetImage("assets/NavBack.png")
          )
        ),
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(

              ),
              child: CircleAvatar(
                child: Image.asset("assets/user-picture.png",fit: BoxFit.scaleDown,height: 100,width: 100,color: Colors.white,),
                backgroundColor: Colors.black,



              ),

            ),
            ListTile(
              leading: Image.asset("assets/Icons/1.png",width: 50,height: 50,),
              title: Text("Create Employee ID",style: TextStyle(fontSize: 15),),
              onTap: (){
               // Navigator.push(context, MaterialPageRoute(builder: (context)=> DummyPage()));
              },

            ),
            ListTile(
              leading: Image.asset("assets/Icons/2.png",width: 50,height: 50,),
              title: Text("Add Party",style: TextStyle(fontSize: 15),),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> AddParty()));
              },

            ),
            ListTile(
              leading: Image.asset("assets/Icons/3.png"),
              title: Text("All Parties",style: TextStyle(fontSize: 15),),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
              },

            ),
            ListTile(
              leading: Image.asset("assets/Icons/4.png"),
              title: Text("Business Dashboard",style: TextStyle(fontSize: 15),),
              onTap: (){
              //  Navigator.push(context, MaterialPageRoute(builder: (context)=> DummyPage()));
              },

            ),
            ListTile(
              leading: Image.asset("assets/Icons/5.png"),
              title: Text("Reports",style: TextStyle(fontSize: 15),),
              onTap: (){
               // Navigator.push(context, MaterialPageRoute(builder: (context)=> DummyPage()));
              },

            ),
            ListTile(
              leading: Image.asset("assets/Icons/6.png"),
              title: Text("Expense",style: TextStyle(fontSize: 15),),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> ExpensesPage()));
              },

            ),
            ListTile(
              leading: Image.asset("assets/Icons/7.png"),
              title: Text("Cash and Bank",style: TextStyle(fontSize: 15),),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> CashBank()));
              },

            ),
            ListTile(
              leading: Image.asset("assets/Icons/8.png"),
              title: Text("Loan Request",style: TextStyle(fontSize: 15),),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> LoanRequest()));
              },

            ),
            ListTile(
              leading: Image.asset("assets/Icons/9.png"),
              title: Text("Setting",style: TextStyle(fontSize: 15),),
              onTap: (){
               // Navigator.push(context, MaterialPageRoute(builder: (context)=> DummyPage()));
              },

            ),
            ListTile(
              leading: Image.asset("assets/Icons/10.png",width: 50,height: 50,),
              title: Text("Back Up",style: TextStyle(fontSize: 15),),
              onTap: (){
                //Navigator.push(context, MaterialPageRoute(builder: (context)=> DummyPage()));
              },

            ),
          ],
        ),
      ),
    );
  }

  getBody() {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Image.asset("assets/backmain1.png",fit: BoxFit.cover
            ,),),
        Padding(
          padding: EdgeInsets.only(top: 100,left: 35),
          child: Table(
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            columnWidths: {1:FractionColumnWidth(.3)},
            children: [
              TableRow(
                children: [

                  Text("Loan ID",style: TextStyle(fontSize: 20,color: dyellow),),
                  Text("Amount",style: TextStyle(fontSize: 20,color: dyellow),),

                ]
              ),
              TableRow(
                  children: [

                   SizedBox(height: 10,),
                    SizedBox(height: 10,),

                  ]
              ),
              TableRow(
                  children: [

                    GestureDetector(
                        child: Text("ID Number",style: TextStyle(fontSize: 20,color: Colors.white),),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> LoanDetails()));
                    },),

                    Row(
                      children: [
                        Text("Rupees ",style: TextStyle(fontSize: 20,color: Colors.white),),
                        Image.asset("assets/11.png",height: 30,width: 30,)
                      ],
                    ),

                  ]
              ),
              TableRow(
                  children: [

                    SizedBox(height: 10,),
                    SizedBox(height: 10,),

                  ]
              ),
              TableRow(
                  children: [

                    GestureDetector(
                      child: Text("ID Number",style: TextStyle(fontSize: 20,color: Colors.white),),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> LoanDetails()));
                      },),

                    Row(
                      children: [
                        Text("Rupees ",style: TextStyle(fontSize: 20,color: Colors.white),),
                        Image.asset("assets/11.png",height: 30,width: 30,)
                      ],
                    ),

                  ]
              ),
              TableRow(
                  children: [

                    SizedBox(height: 10,),
                    SizedBox(height: 10,),

                  ]
              ),
              TableRow(
                  children: [

                    GestureDetector(
                      child: Text("ID Number",style: TextStyle(fontSize: 20,color: Colors.white),),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> LoanDetails()));
                      },),

                    Row(
                      children: [
                        Text("Rupees ",style: TextStyle(fontSize: 20,color: Colors.white),),
                        Image.asset("assets/11.png",height: 30,width: 30,)
                      ],
                    ),

                  ]
              ),
              TableRow(
                  children: [

                    SizedBox(height: 10,),
                    SizedBox(height: 10,),

                  ]
              ),
              TableRow(
                  children: [

                    GestureDetector(
                      child: Text("ID Number",style: TextStyle(fontSize: 20,color: Colors.white),),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> LoanDetails()));
                      },),

                    Row(
                      children: [
                        Text("Rupees ",style: TextStyle(fontSize: 20,color: Colors.white),),
                        Image.asset("assets/11.png",height: 30,width: 30,)
                      ],
                    ),

                  ]
              ),
            ],
          ),
        ),
      ],
    );
  }
}

