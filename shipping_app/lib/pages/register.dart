import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    DateTime dt;
    return Scaffold(
      backgroundColor: Color.fromRGBO(245, 235, 242, 1),
      body: SingleChildScrollView(
          child: Center(
        child: Column(
          children: [
            ClipPath(
              clipper: WaveClipperOne(),
              child: Container(
                height: 200,
                color: Color.fromRGBO(212, 195, 207, 1),
              ),
            ),
            Text('Register Page'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'FirstName',
                    prefixIcon: Icon(
                      Icons.person,
                    ),
                    fillColor: Colors.white70,
                    filled: true),
                validator: (value) =>
                    value.isEmpty ? 'Please enter you first name' : null,
                keyboardType: TextInputType.name,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'Email',
                    prefixIcon: Icon(
                      Icons.email,
                    ),
                    fillColor: Colors.white70,
                    filled: true),
                validator: (value) =>
                    value.isEmpty ? 'Please enter you Email' : null,
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'Password',
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.remove_red_eye),
                    fillColor: Colors.white70,
                    filled: true),
                validator: (value) =>
                    value.isEmpty ? 'Please enter you Email' : null,
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'Conform Password',
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.remove_red_eye),
                    fillColor: Colors.white70,
                    filled: true),
                validator: (value) =>
                    value.isEmpty ? 'Please enter you Email password' : null,
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'DOB',
                  fillColor: Colors.white70,
                  filled: true,
                  suffixIcon: IconButton(
                      icon: Icon(Icons.calendar_today_outlined),
                      onPressed: () async {
                        dt = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1999),
                          lastDate: DateTime(2078),
                        );
                      }),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color.fromRGBO(212, 195, 207, 1))),
                      onPressed: () {
                        Navigator.pushNamed(context, 'Login');
                      },
                      child: Text('Register'),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Positioned(
              bottom: 0,
              child: ClipPath(
                clipper: WaveClipperOne(flip: true, reverse: true),
                child: Container(
                  height: 200,
                  color: Color.fromRGBO(212, 195, 207, 1),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
