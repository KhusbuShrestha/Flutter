import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key key}) : super(key: key);

  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(245, 235, 242, 1),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              ClipPath(
                clipper: WaveClipperOne(),
                child: Container(
                  height: 260,
                  color: Color.fromRGBO(212, 195, 207, 1),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text("LogIn page"),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      hintText: "Email",
                      border: OutlineInputBorder(),
                      fillColor: Colors.white70,
                      filled: true),
                  validator: (value) =>
                      value.isEmpty ? 'Email is required' : null,
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.remove_red_eye_outlined),
                      hintText: "Password",
                      border: OutlineInputBorder(),
                      fillColor: Colors.white70,
                      filled: true),
                  validator: (value) =>
                      value.isEmpty ? 'Email is required' : null,
                  obscureText: true,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(
                          Radius.elliptical(10, 50),
                        ),
                        child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color.fromRGBO(212, 195, 207, 1))),
                          onPressed: () {
                            Navigator.pushNamed(context, 'dashboard');
                          },
                          child: Text("Log IN"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'register');
                },
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Are you a new user?',
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                      TextSpan(
                        text: 'Register here',
                        style: TextStyle(color: Colors.black, fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Positioned(
                bottom: 0,
                child: ClipPath(
                  clipper: WaveClipperOne(flip: true, reverse: true),
                  child: Container(
                    height: 256,
                    color: Color.fromRGBO(212, 195, 207, 1),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
