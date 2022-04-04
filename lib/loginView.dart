import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {

  final emailController = TextEditingController();
  final passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('jdsh'),
      ),

      body: Center(

      child: Container(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),

          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: <Widget>[


                Image.asset('assets/images/password.png', width: 200),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    fillColor: Colors.grey.shade100,
                    filled: true,
                    hintText: 'ENTER EMAIL HERE',
                    border:OutlineInputBorder(borderRadius: BorderRadius.circular(20))
                  ),
                ),

                SizedBox(
                  height: 30,
                ),
                TextField(

                  obscureText: true,
                  controller: passController,
                  decoration: InputDecoration(
                      fillColor: Colors.grey.shade100,
                      filled: true,
                      hintText: 'Password',

                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                      )
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 50,
                  width: 180,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                    ),
                    child: Text('LogIn', style: TextStyle(fontSize: 20.0),),
                    onPressed: () {
                      if(emailController.text.isEmpty){
                        Fluttertoast.showToast(msg: 'Please enter youe email!');
                      }else if(passController.text.isEmpty){
                        Fluttertoast.showToast(msg: 'Please enter your password!');
                      }else{
                        Fluttertoast.showToast(msg: 'Login Sucessful!');
                      }
                    },
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(onPressed: (){},
                      child: Text('Sign Up', style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 18,
                        color: Color(0xff4c505b),
                      ),
                      ),
                    ),

                    TextButton(onPressed: (){
                      showDialog(
                      context: context,
                      builder: (ctx) => AlertDialog(

                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            TextField(
                        decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                          filled: true,
                          hintText: 'ENTER YOUR EMAIL',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)
                            ),)),
                          ],
                        ),
                        actions: <Widget>[
                          FlatButton(
                            onPressed: () {
                              Navigator.of(ctx).pop();
                            },
                            child: Text("Submit"),
                          ),
                        ],
                      ),
                    );

                    }, child: Text('Forgot Password', style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 18,
                      color: Color(0xff4c505b),
                    ),
                    ),
                    ),

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
