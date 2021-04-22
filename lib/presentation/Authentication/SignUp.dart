import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

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
                      padding: EdgeInsets.all(20),
                      child: TextField(
                        autofocus: true,
                          decoration: InputDecoration(
                            hintText: 'your name',

                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                          borderSide: BorderSide(color: Colors.blue.shade400, width: 2),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.blue.shade400),
                        ),
                          ),
                        textInputAction: TextInputAction.done,
                        onEditingComplete: ()=> node.nextFocus(),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      child: TextField(
                        autofocus: true,
                        decoration: InputDecoration(
                          hintText: 'your name',

                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(12.0)),
                            borderSide: BorderSide(color: Colors.blue.shade400, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(color: Colors.blue.shade400),
                          ),
                        ),
                        textInputAction: TextInputAction.done,
                        onEditingComplete: ()=> node.nextFocus(),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      child: TextField(
                        autofocus: true,
                        decoration: InputDecoration(
                          hintText: 'your name',

                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(12.0)),
                            borderSide: BorderSide(color: Colors.blue.shade400, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(color: Colors.blue.shade400),
                          ),
                        ),
                        textInputAction: TextInputAction.done,
                        onEditingComplete: ()=> node.nextFocus(),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      child: TextField(
                        autofocus: true,
                        decoration: InputDecoration(
                          hintText: 'your name',

                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(12.0)),
                            borderSide: BorderSide(color: Colors.blue.shade400, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(color: Colors.blue.shade400),
                          ),
                        ),
                        textInputAction: TextInputAction.done,
                        onEditingComplete: ()=> node.nextFocus(),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      child: TextField(
                        autofocus: true,
                        decoration: InputDecoration(
                          hintText: 'your name',

                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(12.0)),
                            borderSide: BorderSide(color: Colors.blue.shade400, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(color: Colors.blue.shade400),
                          ),
                        ),
                        textInputAction: TextInputAction.done,
                        onEditingComplete: ()=> node.nextFocus(),
                      ),
                    ),
                    
                    Container(

                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height/2/6,
                      child: ElevatedButton(

                        onPressed: () {
                          // // Validate returns true if the form is valid, or false otherwise.
                          // if (_signUpFormKey.currentState!.validate()) {
                          //
                          //   // If the form is valid, display a snackbar. In the real world,
                          //   // you'd often call a server or save the information in a database.
                          //   ScaffoldMessenger.of(context)
                          //       .showSnackBar(SnackBar(content: Text('Processing Data')));
                          // }
                        },
                        child: Text('Submit'),
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
