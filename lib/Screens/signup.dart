import 'package:flutter/material.dart';
import 'package:leo_app/Screens/display_page.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  late String name = "", email = "", address = "";
  late int phonenumber = 0;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 126),
          Row(
            children: const [
              SizedBox(
                width: 40,
              ),
              Text(
                "Enter Details",
                style: TextStyle(color: Colors.black, fontSize: 28),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              const SizedBox(
                width: 50,
              ),
              Icon(Icons.person, color: Color(0xffF88E8E)),
              const SizedBox(
                width: 20,
              ),
              Container(
                width: 200,
                child: TextFormField(
                  onChanged: (val) {
                    setState(() {
                      name = val;
                    });
                  },
                  decoration: const InputDecoration(
                      hintText: "Full Name",
                      hintStyle: TextStyle(
                        color: Color(0xffF88E8E),
                      )),
                ),
              ),
            ],
          ),
          SizedBox(height: 40),
          Row(
            children: [
              const SizedBox(
                width: 50,
              ),
              const Icon(
                Icons.email,
                color: Color(0xffF88E8E),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                width: 200,
                child: TextFormField(
                  onChanged: (val) {
                    setState(() {
                      email = val;
                    });
                  },
                  decoration: const InputDecoration(
                      hintText: "Email",
                      hintStyle: TextStyle(color: Color(0xffF88E8E))),
                ),
              ),
            ],
          ),
          const SizedBox(height: 40),
          Row(
            children: [
              const SizedBox(
                width: 50,
              ),
              const Icon(
                Icons.phone,
                color: Color(0xffF88E8E),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                width: 200,
                child: TextFormField(
                  onChanged: (val) {
                    setState(() {
                      phonenumber = int.parse(val);
                    });
                  },
                  decoration: const InputDecoration(
                      hintText: "Phone Number",
                      hintStyle: TextStyle(color: Color(0xffF88E8E))),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            children: [
              const SizedBox(
                width: 50,
              ),
              const Icon(
                Icons.home,
                color: Color(0xffF88E8E),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                width: 200,
                child: TextFormField(
                  onChanged: (val) {
                    setState(() {
                      address = val;
                    });
                  },
                  decoration: const InputDecoration(
                      hintText: "Address",
                      hintStyle: TextStyle(color: Color(0xffF88E8E))),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            children: [
              SizedBox(width: 30),
              Container(
                width: 300,
                child: RaisedButton(
                  color: Color(0xffF88E8E),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              Display(email, name, address, phonenumber),
                        ));
                  },
                  child: Text("Enter"),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
