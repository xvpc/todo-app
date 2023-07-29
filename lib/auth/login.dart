import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(30),
      child: Wrap(
        direction: Axis.horizontal,
        alignment: WrapAlignment.center,
        spacing: 44,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.asset('images/image1.png', fit: BoxFit.cover),
          ),
          SizedBox(height: 40),
          Form(
            child: Column(children: [
              TextFormField(
                decoration: InputDecoration(
                    hintText: "User name",
                    prefixIcon: Icon(Icons.person, color: Colors.grey),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.blue,
                      width: 2,
                    ))),
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Password",
                    prefixIcon: Icon(Icons.password, color: Colors.grey),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.blue,
                      width: 2,
                    ))),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an Account?"),
                  SizedBox(width: 10),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed("signup");
                    },
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed("home");
                  },
                  child: Text(
                    "Login",
                    style: Theme.of(context).textTheme.displayMedium,
                  ))
            ]),
          )
        ],
      ),
    ));
  }
}
