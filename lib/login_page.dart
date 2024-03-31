import 'package:flutter/material.dart';
import 'login.dart';
import 'register.dart';

void main() {
  runApp(LoginPage());
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: null,
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.asset(
                'assets/images/bro.png', // Path to your logo image
                height: 300,
                width: 200,
              ),
              SizedBox(height: 30,width:5,),
              Image.asset(
                'assets/images/logo-icon.jpg', // Path to your logo image
                height: 50,
                width: 50,
              ),
              SizedBox(height: 10),
              Text(
                'gigHive',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  // Login button onPressed action
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Signinpage()),
                  );
                },
                child: Text('Login'),
              ),
              SizedBox(height: 10),
              ElevatedButton(

                style: ButtonStyle(

                    backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    side: MaterialStateProperty.all<BorderSide>((BorderSide(color: Colors.blue)),)
                ),
                onPressed: () {
                  // Register button onPressed action
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Register()),
                  );

                },
                child: Text(style: TextStyle(
                    color: Colors.blue
                ),'Register'),
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  // Continue as a guest onPressed action
                },
                child: Text('Continue as a guest'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
