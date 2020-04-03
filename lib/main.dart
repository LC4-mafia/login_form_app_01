import 'package:flutter/material.dart';

void main(){

  runApp(MaterialApp(

    title: 'Bye',
    home: Bye(),

    )
  );
}

class Bye extends StatefulWidget {


  @override
  _ByeState createState() => _ByeState();
}

class _ByeState extends State<Bye> {


  @override
  Widget build(BuildContext context) {

    //returns the scaffold to the material ui
    return Scaffold(
      backgroundColor: Colors.yellowAccent,   //sets the background color

      //puts the help floating action button down there
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(
          Icons.help,
          color: Colors.grey[400],
        ),
      ),

      // creates my appBar with text: 'Bye'
      appBar: AppBar(

        title: Text(
          'Bye',
          style: TextStyle(
            color: Colors.black,
          ),
          ),
        centerTitle: true,
        backgroundColor: Colors.teal,

      ),

      //wraps body in a padding
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: <Widget>[

            // puts the account avator icon in the center
          Center(
            child: Icon(
              Icons.account_circle,
              size:  90,
            ),
          ),

          //divides the widget above from those below with the grey line
          Divider(
            height: 80,
            color: Colors.grey,
          ),

          //puts the userName
          Text(
            'User Name',
            style: TextStyle(
                //color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
                fontSize: 23.0,
              ),
          ),

          //space widgets; height attribute does it columnly
          SizedBox(height: 40,),

          //puts the password text widget and the lock icon besides each other
          Row(
            children: <Widget>[

              Expanded(
                  child: Text(
                    'Password',
                    style: TextStyle(
                      //color: Colors.amberAccent[200],
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.bold,
                      fontSize: 23.0,
                      ),
                    ),
                  flex: 8,          //space the text afar from the icon
              ),

              //put a width space between the password and the lock icon
              SizedBox(width: 1,),
              Expanded(
                  child: Icon(
                  Icons.lock
                ),
              )

            ],
          ),

          SizedBox(height: 80,),

          //put the sign up and the login and their icons beside them
          Row(

            children: <Widget>[
              SizedBox(width: 20,),
              Icon(
                Icons.account_circle,   //sign up icon
                
              ),

              SizedBox(width: 4,),
              
              RaisedButton(
                onPressed: () {},
                child: Text('Signup'),    //sign up itself
                color: Colors.grey,
              ),

              SizedBox(width: 55,),
              Icon(
                Icons.verified_user     //login icon
              ),

              SizedBox(width: 4,),
              RaisedButton(
                onPressed: (){},
                color: Colors.grey,
                child: Text('Login'),  //login itself
              )
            ]
          ),
          ]
        ),
      ),
    );
  }
}

//First Form Text App Done!