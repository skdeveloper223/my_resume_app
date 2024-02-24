import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: [
              CircleAvatar(
                radius: 40,
                backgroundColor: Colors.blueAccent,
                child: FlutterLogo(),
              ),
              Text("Santosh Koli"),
              Text("Flutter Developer"),
              Row(
                children: [
                  Icon(Icons.phone),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Mobile No.: "),
                      Text("+91 9998557234"),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.mail),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Email Id.: "),
                      Text("kolisantosh222@gmail.com"),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.web),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Linkedin : "),
                      Text("linkedin.com/in/santosh-koli-140219159"),
                    ],
                  ),
                ],
              ),
              Container(
                color: Colors.grey.withOpacity(0.4),
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.symmetric(vertical: 8),
                child: Text("I am passionate software engineer, worked on various client’s base company. I believe " +
                    "in learning new things and implementing it into my project and also deliver as per" +
                    "client\'s requirement. Good knowledge of flutter, firebase and UI designing. also worked" +
                    "on web services. Always ready for new challenges and like to learn something new."),
              )
            ],
          ),
        ),
      ),
    );
  }
}
