import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:kids_care/presentation/Authentication/SignUp.dart';
import 'package:kids_care/presentation/widgets/home_form.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final Shader linearGradient = LinearGradient(
    colors: <Color>[Color(0xffDA44bb), Color(0xff8921aa)],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
  final userController = TextEditingController();
  final passwordController = TextEditingController();
  bool _passwordVisible = false;
  bool _obsecureText = true;
  @override
  Widget build(BuildContext context) {
    final node = FocusScope.of(context);
    return Scaffold(
      resizeToAvoidBottomInset:true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: Image.asset('assets/images/auth.png'),
            ),
            Container(
              child: Column(
                children: [
                  Text(
                    'Kids Care',
                    style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'Fugaz_One',
                        foreground: Paint()..shader = linearGradient),
                  ),
                  Container(
                    // height: MediaQuery.of(context).size.height / 2 / 4,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      autofocus: true,
                      controller: userController,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                          borderSide:
                              BorderSide(color: Colors.blue.shade300, width: 2),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.blue.shade300),
                        ),
                        labelText: '   Username/Email',

                      ),
                      textInputAction: TextInputAction.done,
                      onEditingComplete: ()=> node.nextFocus(),

                    ),
                  ),
                  Container(

                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      controller: passwordController,
                      obscureText: _obsecureText,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                          borderSide:
                              BorderSide(color: Colors.blue.shade300, width: 2),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.blue.shade300),
                        ),
                        labelText: '   Password',

                        // suffixIcon: Icon(Icons.visibility_off),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _passwordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          onPressed: () {
                            setState(() {
                              _passwordVisible = !_passwordVisible;
                              if (_passwordVisible) {
                                _obsecureText = !_obsecureText;
                              } else {
                                _obsecureText = true;
                              }
                            });
                          },
                        ),
                      ),
                      textInputAction: TextInputAction.done,
                      onEditingComplete: ()=> node.nextFocus(),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: InkWell(
                      child: Text(' Forgot Password?',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey.shade800)),
                      onTap: () {},
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width,
                    // width: MediaQuery.of(context).size.width,
                    // padding: EdgeInsets.all(20),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        )),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.blue.shade900),
                        shadowColor: MaterialStateProperty.all(Colors.grey),
                        elevation: MaterialStateProperty.all<double>(5),
                      ),
                      onPressed: () {
                        if (userController.text == "test" &&
                            passwordController.text == "test@123") {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      HomeForm()));
                          Fluttertoast.showToast(
                            msg: 'login successfully',
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.CENTER,
                            backgroundColor: Colors.blueGrey.shade800,
                          );
                        } else {
                          Fluttertoast.showToast(
                            msg: 'invalid username or password',
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.CENTER,
                            backgroundColor: Colors.blueGrey.shade800,
                          );
                        }
                      },
                      child: Text('Sign In'),
                    ),
                  ),
                  Container(     padding: EdgeInsets.only(bottom: 10),
                    child: Center(

                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text("Don't have account?"),
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            child: Text(
                              'Sign up',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue.shade400,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
