import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:our_first_prgrm/profile.dart';
import 'package:our_first_prgrm/reg.dart';

class LoginScreen extends StatelessWidget {
  TextEditingController usernamcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text(
          "Login",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: Form(
        key: _formKey,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: usernamcontroller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Useranme"),
                    hintText: 'enter your username',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'please enter username';
                    }
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  controller: passwordcontroller,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Password"),
                    hintText: 'enter your password',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'please enter password';
                    }
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    height: 50,
                    width: 200,
                    child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            print("username = " + usernamcontroller.text);
                            print("password = " + passwordcontroller.text);

                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return Profile();
                              },
                            ));
                          }
                        },
                        child: Text("Login"))),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Create account ?"),
                    TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return RegistrationScreen();
                            },
                          ));
                        },
                        child: Text(
                          "SingUp",
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
