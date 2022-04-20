import 'package:flutter/material.dart';
import 'package:vahansewa_app/mainScreenFile.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  var _controller1 = TextEditingController();
  var _controller2 = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'VAHAN',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange),
                    ),
                    TextSpan(
                      text: 'SEWA',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Center(
                child: Text(
              "Login with your email",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            )),
            SizedBox(
              height: 20,
            ),
            Center(
                child: Text(
              "Enter your registered email and password",
              style: TextStyle(color: Colors.black, fontSize: 14),
            )),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey)),
              child: TextFormField(
                controller: _controller1,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Enter Email Address',
                  prefixIcon: IconButton(
                    onPressed: () {
                      _controller1.clear();
                    },
                    icon: Container(
                      color: Colors.grey,
                      child: Icon(
                        Icons.mail,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey)),
              child: TextFormField(
                controller: _controller2,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Enter Password',
                  prefixIcon: IconButton(
                    onPressed: () {
                      _controller2.clear();
                    },
                    icon: Container(
                      color: Colors.grey,
                      child: Icon(
                        Icons.password,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Forgot password?",
                  style: TextStyle(color: Colors.grey[700]),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.7,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange, // background
                  onPrimary: Colors.white, // foreground
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MainScreenFile()));
                },
                child: Text('SUBMIT', style: TextStyle(fontSize: 20)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
