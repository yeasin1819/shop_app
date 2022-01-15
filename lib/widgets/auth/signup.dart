import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/models/auth_provider.dart';

class AuthSignUp extends StatefulWidget {
  @override
  State<AuthSignUp> createState() => _AuthSignUpState();
}

class _AuthSignUpState extends State<AuthSignUp> {
  // const AtuhSignUp({Key? key}) : super(key: key);
  final _keyform = GlobalKey<FormState>();

  final Map<String, String> _authData = {
    'email': '',
    'password': '',
    'con-password': ''
  };

  Future<void> signUp() async {
    final validate = _keyform.currentState!.validate();
    if (!validate) {
      return;
    }
    _keyform.currentState!.save();
    if (_authData['password'] == _authData['con-password']) {
      await Provider.of<AuthProvider>(context, listen: false).authSignUp(
        _authData['email'].toString(),
        _authData['password'].toString(),
      );
      Navigator.of(context).pushNamed('/sign-in');
    } else {
      print('password not match');
    }

    print(_authData['email']);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shop App "),
        centerTitle: true,
        backgroundColor: Color(0xff0f2625),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16.0),

          child: SingleChildScrollView(
            child: Form(
              key: _keyform,
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Email address',
                     label: Text("E-mail"),
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value!.isEmpty || !value.contains('@')) {
                        return 'Please enter valid email';
                      }
                      return null;
                    },
                    onSaved: (newValue) {
                      _authData['email'] = newValue.toString();
                    },
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  TextFormField(
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      label: Text("Password"),
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value!.length <= 6 && value.isEmpty) {
                        return 'password min length 6';
                      }
                      return null;
                    },
                    onSaved: (newValue) {
                      _authData['password'] = newValue.toString();
                    },
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Confirm password',
                      label: Text("Confirm Password"),
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    validator: (value) {
                      if (value!.length <= 6 && value.isEmpty) {
                        return 'password min length 6';
                      }
                      return null;
                    },
                    onSaved: (newValue) {
                      _authData['con-password'] = newValue.toString();
                    },
                  ),
                  SizedBox(
                    height: 22.0,
                  ),
                  FlatButton(
                    color: Colors.blue,
                    height: 50,
                    minWidth: double.infinity,
                    onPressed: signUp,
                    child: Text(
                      'Sign up',
                      style: TextStyle(fontSize: 16.0, color: Colors.white),
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Already sign-up ?',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            letterSpacing: 1,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed('/sign-in');
                          },
                          child: const Text(
                            'sign-in',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.blue,
                              letterSpacing: 1,
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
