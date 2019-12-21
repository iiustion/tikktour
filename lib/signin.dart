import 'package:flutter/material.dart';
import 'package:tikktour/register.dart';

class SigninScreen extends StatefulWidget {
  @override
  _SigninScreenState createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Widget showAppName() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'T',
          style: TextStyle(
            color: Colors.redAccent,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'I',
          style: TextStyle(
            color: Colors.blueAccent.shade700,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'KK TOUR',
          style: TextStyle(
            color: Colors.redAccent,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget showAppLogo() {
    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      child: Image.asset('images/logo.png'),
    );
  }

  Widget emailText() {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      child: TextFormField(
        controller: _emailController,
        keyboardType: TextInputType.emailAddress,
      ),
    );
  }

  Widget passwordText() {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      child: TextFormField(
        obscureText: true,
        controller: _passwordController,
      ),
    );
  }

  Widget signinButton() {
    return RaisedButton(
      color: Colors.redAccent,
      child: Text(
        'SIGN IN',
        style: TextStyle(color: Colors.white),
      ),
      onPressed: () {},
    );
  }

  Widget signupButton() {
    return FlatButton(
      child: Text('SIGN UP'),
      onPressed: () {
        MaterialPageRoute registerScreenRoute = MaterialPageRoute(
            builder: (BuildContext buildContext) => RegisterScreen());
        Navigator.of(context).push(registerScreenRoute);
      },
    );
  }

  Widget signinColunmList() {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          showAppLogo(),
          showAppName(),
          emailText(),
          passwordText(),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              signinButton(),
              SizedBox(width: 10),
              signupButton()
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/bgapp.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(color: Color.fromARGB(100, 255, 255, 255)),
          child: SafeArea(
            child: signinColunmList(),
          ),
        ),
      ),
    );
  }
}
