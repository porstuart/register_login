import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({Key key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final formKey = new GlobalKey<FormState>();

  String _email, _password, _confirmPassword, _phoneNum;

  void validateAndSave() {
    final form = formKey.currentState;
    if (form.validate()) {
      print('Form is valid');
    } else {
      print('Form is invalid');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.cyan[500],
                Colors.cyan[500],
                Colors.cyan[400],
                Colors.cyan[300],
              ],
              stops: [0.1, 0.4, 0.7, 0.9],
            ),
          ),
        ),
        Container(
          height: double.infinity,
          child: SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            padding: EdgeInsets.symmetric(
              horizontal: 40.0,
              vertical: 60.0,
            ),
            child: new Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/images/Logo.png'),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  new TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    style:
                        TextStyle(color: Colors.white, fontFamily: 'OpenSans'),
                    decoration: new InputDecoration(
                      focusedBorder: new UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 2.0,
                        ),
                      ),
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(0.0),
                        child: Icon(
                          Icons.email,
                          color: Colors.white,
                        ),
                      ),
                      hintText: 'Email',
                      hintStyle: TextStyle(
                          color: Colors.white54, fontFamily: 'OpenSans'),
                    ),
                    validator: (value) =>
                        value.isEmpty ? 'Email can\'t be empty' : null,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  new TextFormField(
                    style:
                        TextStyle(color: Colors.white, fontFamily: 'OpenSans'),
                    decoration: new InputDecoration(
                      focusedBorder: new UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 2.0,
                        ),
                      ),
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(0.0),
                        child: Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                      ),
                      hintText: 'Full Name',
                      hintStyle: TextStyle(
                          color: Colors.white54, fontFamily: 'OpenSans'),
                    ),
                    validator: (value) =>
                        value.isEmpty ? 'Name can\'t be empty' : null,
                    onSaved: (value) => _email = value,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  new TextFormField(
                    obscureText: true,
                    style:
                        TextStyle(color: Colors.white, fontFamily: 'OpenSans'),
                    decoration: new InputDecoration(
                      focusedBorder: new UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 2.0,
                        ),
                      ),
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(0.0),
                        child: Icon(
                          Icons.lock,
                          color: Colors.white,
                        ),
                      ),
                      hintText: 'Password',
                      hintStyle: TextStyle(
                          color: Colors.white54, fontFamily: 'OpenSans'),
                    ),
                    validator: (value) =>
                        value.isEmpty ? 'Password can\'t be empty' : null,
                    onSaved: (value) => _password = value,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  new TextFormField(
                    obscureText: true,
                    style:
                        TextStyle(color: Colors.white, fontFamily: 'OpenSans'),
                    decoration: new InputDecoration(
                      focusedBorder: new UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 2.0,
                        ),
                      ),
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(0.0),
                        child: Icon(
                          Icons.lock,
                          color: Colors.white,
                        ),
                      ),
                      hintText: 'Confirm Password',
                      hintStyle: TextStyle(
                          color: Colors.white54, fontFamily: 'OpenSans'),
                    ),
                    validator: (value) =>
                        value.isEmpty ? 'Password can\'t be empty' : null,
                    onSaved: (value) => _confirmPassword = value,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  new TextFormField(
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      WhitelistingTextInputFormatter.digitsOnly
                    ],
                    style:
                        TextStyle(color: Colors.white, fontFamily: 'OpenSans'),
                    decoration: new InputDecoration(
                      focusedBorder: new UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 2.0,
                        ),
                      ),
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(0.0),
                        child: Icon(
                          Icons.phone_android,
                          color: Colors.white,
                        ),
                      ),
                      hintText: 'Mobile Number',
                      hintStyle: TextStyle(
                          color: Colors.white54, fontFamily: 'OpenSans'),
                    ),
                    validator: (value) =>
                        value.isEmpty ? 'Mobile Number can\'t be empty' : null,
                    onSaved: (value) => _phoneNum = value,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RaisedButton(
                    onPressed: validateAndSave,
                    child: Text('Register'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
