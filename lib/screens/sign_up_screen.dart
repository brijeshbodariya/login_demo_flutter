import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:login_demo_flutter/constant/constant.dart';
import 'package:login_demo_flutter/screens/home_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  SignUpState createState() => SignUpState();
}

class SignUpState extends State<SignUpScreen>
    with SingleTickerProviderStateMixin {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController conPasswordController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        body: ListView(
          shrinkWrap: true,
          reverse: false,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Row(
                        children: <Widget>[
                          Padding(
                              padding: const EdgeInsets.only(left: 5.0),
                              child: IconButton(
                                  icon: const Icon(Icons.arrow_back),
                                  onPressed: () {
                                    Navigator.of(context).pop(signUpScreen);
                                  })),
                          const Padding(
                            padding: EdgeInsets.only(
                                left: 0.0, bottom: 0.0, top: 0.0),
                            child: Text("SIGN UP",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0,
                                ),
                                textAlign: TextAlign.left),
                          )
                        ],
                      ),
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
                      height: 100.0,
                      width: 220.0,
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
                                    controller: nameController,
                                    decoration: InputDecoration(
                                        labelText: "Full Name*",
                                        filled: false,
                                        prefixIcon: Padding(
                                            padding: const EdgeInsets.only(
                                                right: 7.0),
                                            child: Image.asset(
                                              "assets/images/user_icon.png",
                                              height: 25.0,
                                              width: 25.0,
                                              fit: BoxFit.scaleDown,
                                            ))),
                                    keyboardType: TextInputType.emailAddress,
                                  ),
                                ),
                                Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10.0, right: 10.0, top: 5.0),
                                    child: TextFormField(
                                      obscureText: false,
                                      controller: emailController,
                                      decoration: InputDecoration(
                                          labelText: "Email-Id",
                                          enabled: true,
                                          filled: false,
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
                                        left: 10.0, right: 10.0, top: 5.0),
                                    child: TextFormField(
                                      obscureText: true,
                                      controller: passwordController,
                                      decoration: InputDecoration(
                                          labelText: "Password*",
                                          enabled: true,
                                          filled: false,
                                          prefixIcon: Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 7.0),
                                              child: Image.asset(
                                                "assets/images/password_icon.png",
                                                height: 25.0,
                                                width: 25.0,
                                                fit: BoxFit.scaleDown,
                                              ))),
                                      keyboardType: TextInputType.text,
                                    )),
                                Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10.0, right: 10.0, top: 5.0),
                                    child: TextFormField(
                                      obscureText: true,
                                      controller: conPasswordController,
                                      decoration: InputDecoration(
                                          labelText: "Confirm Password*",
                                          enabled: true,
                                          filled: false,
                                          prefixIcon: Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 7.0),
                                              child: Image.asset(
                                                "assets/images/password_icon.png",
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
                                      if (!(nameController.value.text
                                          .toString()
                                          .trim()
                                          .isNotEmpty)) {
                                        Fluttertoast.showToast(
                                            msg: "Please enter user name.",
                                            toastLength: Toast.LENGTH_SHORT,
                                            gravity: ToastGravity.CENTER,
                                            timeInSecForIosWeb: 1);
                                      }
                                      /* else if(!(email_controller.value.text.toString().trim().length>0))
                                      {

                                      }*/

                                      else if (!(passwordController.value.text
                                          .toString()
                                          .trim()
                                          .isNotEmpty)) {
                                        Fluttertoast.showToast(
                                            msg: "Please enter the password.",
                                            toastLength: Toast.LENGTH_SHORT,
                                            gravity: ToastGravity.CENTER,
                                            timeInSecForIosWeb: 1);
                                      } else if (!(conPasswordController
                                          .value.text
                                          .toString()
                                          .trim()
                                          .isNotEmpty)) {
                                        Fluttertoast.showToast(
                                            msg:
                                                "Please enter the confirm password.",
                                            toastLength: Toast.LENGTH_SHORT,
                                            gravity: ToastGravity.CENTER,
                                            timeInSecForIosWeb: 1);
                                      } else {
                                        if (conPasswordController.value.text
                                            .toString()
                                            .endsWith(passwordController
                                                .value.text
                                                .toString())) {
                                          var root = MaterialPageRoute(
                                              builder: (context) => HomeScreen(
                                                  nameController.value.text
                                                      .toString()));

                                          Navigator.of(context)
                                              .pop(logInScreen);

                                          Navigator.pushReplacement(
                                              context, root);

                                          //Navigator.of(context).pop(SIGN_UP_SCREEN);

                                        } else {
                                          Fluttertoast.showToast(
                                              msg:
                                                  "Your Password and confirm password do not match.",
                                              toastLength: Toast.LENGTH_SHORT,
                                              gravity: ToastGravity.CENTER,
                                              timeInSecForIosWeb: 1);
                                        }
                                      }
                                    },
                                    child: const Text(
                                      "SignUp ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ],
                  ),
                ))
              ],
            )
          ],
        ));
  }

  @override
  void dispose() {
    // Clean up the controller when the Widget is disposed
    nameController.dispose();
    passwordController.dispose();
    emailController.dispose();
    conPasswordController.dispose();
    super.dispose();
  }
}
