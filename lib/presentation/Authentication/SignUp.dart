import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kids_care/presentation/Authentication/signIn.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}
enum SingingCharacter { male, female }
class _SignUpState extends State<SignUp> {

  SingingCharacter _character = SingingCharacter.male;

  final _signUpFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final node = FocusScope.of(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                child: Image.asset('assets/images/signup.png'),
              ),
              Form(
                key: _signUpFormKey,
                child: Column(

                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 10, 20, 5),
                      child: TextField(
                        autofocus: true,
                        decoration: InputDecoration(
                          hintText: 'user name',
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0)),
                            borderSide: BorderSide(
                                color: Colors.blue.shade400, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(color: Colors.blue.shade400),
                          ),
                        ),
                        textInputAction: TextInputAction.done,
                        onEditingComplete: () => node.nextFocus(),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 10, 20, 5),
                      child: TextField(
                        autofocus: true,
                        decoration: InputDecoration(
                          hintText: 'email address',
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0)),
                            borderSide: BorderSide(
                                color: Colors.blue.shade400, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(color: Colors.blue.shade400),
                          ),
                        ),
                        textInputAction: TextInputAction.done,
                        onEditingComplete: () => node.nextFocus(),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 10, 20, 5),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'password',
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(12.0)),
                            borderSide: BorderSide(
                                color: Colors.blue.shade400, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(color: Colors.blue.shade400),
                          ),
                        ),
                        textInputAction: TextInputAction.done,
                        onEditingComplete: () => node.nextFocus(),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 10, 20, 5),
                      child: TextField(
                        autofocus: true,
                        decoration: InputDecoration(
                          hintText: 'mobile number',
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0)),
                            borderSide: BorderSide(
                                color: Colors.blue.shade400, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(color: Colors.blue.shade400),
                          ),
                        ),
                        textInputAction: TextInputAction.done,
                        onEditingComplete: () => node.nextFocus(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                        Container(
                          width:MediaQuery.of(context).size.width/2*0.8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blue.shade300,
                          boxShadow:[
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 6.0,
                            ),
                          ],
                        ),

                          child: ListTile(
                            title: Text('Male',style: TextStyle(color: Colors.white),),
                            leading: Radio<SingingCharacter>(
                              // fillColor: MaterialStateProperty.all<Color>(Colors.white),
                           activeColor: Colors.white,

                              value: SingingCharacter.male,
                              groupValue: _character,
                              onChanged: (SingingCharacter value) {
                                setState(() {
                                  _character = value;

                                });
                              },
                            ),
                          ),
                        ),
                        Container(
                          width:MediaQuery.of(context).size.width/2*0.8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.pink.shade300,
                            boxShadow:[
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 6.0,
                              ),
                            ],
                          ),
                          child: ListTile(

                            title:  Text('Female',style:TextStyle(color: Colors.white),),
                            leading: Radio<SingingCharacter>(
                              activeColor: Colors.white,
                              value: SingingCharacter.female,
                              groupValue: _character,
                              onChanged: (SingingCharacter value) {
                                setState(() {

                                  _character = value;
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                      ),
                    ),



                 
                    Container(
                      padding: EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width,
                      // height: MediaQuery.of(context).size.height / 2 / 6,
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
                        onPressed: () {},
                        child: Text('Submit'),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Center(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text("Already have account?"),
                            SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              child: Text(
                                'Sign In',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue.shade400,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>SignIn()));
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
      ),
    );
  }
}
