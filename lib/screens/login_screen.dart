import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:login_demo_flutter/constant/constant.dart';
import 'package:login_demo_flutter/screens/home_screen.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  LogInScreenState createState() => LogInScreenState();
}

class LogInScreenState extends State<LogInScreen>
    with SingleTickerProviderStateMixin {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        body: ListView(
          shrinkWrap: true,
          reverse: false,
          children: <Widget>[
            const SizedBox(
              height: 20.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  children: const <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 20.0, bottom: 10.0),
                      child: Text("LOG IN",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0,
                          ),
                          textAlign: TextAlign.left),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      "assets/images/logo.png",
                      height: 150.0,
                      width: 210.0,
                      fit: BoxFit.scaleDown,
                    )
                  ],
                ),
                Center(
                  child: Center(
                    child: Stack(
                      children: <Widget>[
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 30.0, right: 30.0),
                          child: Form(
                            autovalidateMode: AutovalidateMode.disabled,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10.0, right: 10.0),
                                  child: TextFormField(
                                    controller: emailController,
                                    autofocus: false,
                                    decoration: InputDecoration(
                                      labelText: "User Name*",
                                      prefixIcon: Padding(
                                          padding:
                                              const EdgeInsets.only(right: 7.0),
                                          child: Image.asset(
                                            "assets/images/user_icon.png",
                                            height: 25.0,
                                            width: 25.0,
                                            fit: BoxFit.scaleDown,
                                          )),
                                    ),
                                    keyboardType: TextInputType.emailAddress,
                                  ),
                                ),
                                Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10.0, right: 10.0, top: 5.0),
                                    child: TextFormField(
                                      obscureText: true,
                                      autofocus: false,
                                      controller: passwordController,
                                      decoration: InputDecoration(
                                          labelText: "Password*",
                                          prefixIcon: Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 7.0),
                                              child: Image.asset(
                                                "assets/images/email_icon.png",
                                                height: 25.0,
                                                width: 25.0,
                                                fit: BoxFit.scaleDown,
                                              ))),
                                      keyboardType: TextInputType.text,
                                    )),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 0.0, top: 45.0, bottom: 20.0),
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                      shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                      ),
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              const Color(0xFF54C5F8)),
                                      textStyle: MaterialStateProperty.all(
                                          const TextStyle(color: Colors.white)),
                                      elevation: MaterialStateProperty.all(5),
                                      padding: MaterialStateProperty.all(
                                          const EdgeInsets.only(
                                              left: 80.0,
                                              right: 80.0,
                                              top: 15.0,
                                              bottom: 15.0)),
                                    ),
                                    onPressed: () {
                                      if (!(emailController.value.text
                                              .trim()
                                              .toString()
                                              .length >
                                          1)) {
                                        Fluttertoast.showToast(
                                            msg: "Please enter user name.",
                                            toastLength: Toast.LENGTH_SHORT,
                                            gravity: ToastGravity.CENTER,
                                            timeInSecForIosWeb: 1);
                                      } else if (!(passwordController.value.text
                                              .trim()
                                              .toString()
                                              .length >
                                          1)) {
                                        Fluttertoast.showToast(
                                            msg: "Please enter the password.",
                                            toastLength: Toast.LENGTH_SHORT,
                                            gravity: ToastGravity.CENTER,
                                            timeInSecForIosWeb: 1);
                                      } else {
                                        /* Fluttertoast.showToast(
                                              msg:
                                              "You have successful loggedin to " +
                                                  email_controller.value.text
                                                      .toString(),
                                              toastLength: Toast.LENGTH_SHORT,
                                              gravity: ToastGravity.CENTER,
                                              timeInSecForIos: 1);
*/
                                        // email_controller.clear();
                                        //password_controller.clear();
                                        //Navigator.of(context).pop(LOGIN_SCREEN);

                                        var root = MaterialPageRoute(
                                            builder: (context) => HomeScreen(
                                                emailController.value.text
                                                    .toString()));
                                        //  Navigator.of(context).pop(LOGIN_SCREEN);
                                        Navigator.pushReplacement(
                                            context, root);
                                      }
                                    },
                                    child: const Text(
                                      "Login",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Column(
                                  children: <Widget>[
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context)
                                            .pushNamed(signUpScreen);
                                      },
                                      child: const Padding(
                                        padding: EdgeInsets.only(top: 20.0),
                                        child: Text(
                                          "Don't Have An Account",
                                          style: TextStyle(
                                              decoration:
                                                  TextDecoration.underline,
                                              fontSize: 15.0),
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ));
  }

  @override
  void dispose() {
    // Clean up the controller when the Widget is disposed

    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }
}
