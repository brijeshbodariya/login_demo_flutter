import 'package:flutter/material.dart';
import 'package:login_demo_flutter/constant/constant.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen(this.userName, {Key? key}) : super(key: key);

  final String userName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: const Color(0xFF54C5F8),
        title: const Text("Home"),
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.power_settings_new),
              onPressed: () {
                Navigator.of(context).pushReplacementNamed(logInScreen);
              })
        ],
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 40.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text("Welcome,    ",
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 20.0)),
                    Row(children: const <Widget>[])
                  ],
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(userName,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18.0))
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Center(
              child: Opacity(
                  opacity: 0.5,
                  child: Image.asset(
                    "assets/images/logo.png",
                  )),
            ),
          ),
        ],
      ),
    );
    // TODO: implement build
  }
}
