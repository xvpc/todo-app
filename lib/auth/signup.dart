import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
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
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Password",
                    prefixIcon: Icon(Icons.password, color: Colors.grey),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.blue,
                      width: 2,
                    ))),
              ),
              SizedBox(height: 10),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Confirm Password",
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
                  Text("Already have an Account!"),
                  SizedBox(width: 10),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed("login");
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Sign up",
                    style: Theme.of(context).textTheme.displayMedium,
                  ))
            ]),
          )
        ],
      ),
    ));
  }
}
