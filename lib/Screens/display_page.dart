import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Display extends StatefulWidget {
  //const Display({Key? key}) : super(key: key);
  final String email, name, address;
  final int phnumber;
  Display(this.email, this.name, this.address, this.phnumber);
  @override
  _DisplayState createState() => _DisplayState();
}

class _DisplayState extends State<Display> {
  // ignore: deprecated_member_use
  late List<String> list = [];
  @override
  Widget build(BuildContext context) {
    list.add(widget.name);
    list.add(widget.address);
    list.add(widget.email);
    list.add(widget.phnumber.toString());
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(
            height: 80,
          ),
          Row(
            children: [
              Spacer(),
              Container(
                height: 150,
                width: 150,
                child: Image.asset(
                  "assets/logo.png",
                  fit: BoxFit.fill,
                ),
              ),
              Spacer(),
            ],
          ),
          const SizedBox(height: 50),
          Row(
            children: [
              const SizedBox(
                width: 50,
              ),
              Icon(Icons.person, color: const Color(0xffF88E8E)),
              const SizedBox(
                width: 20,
              ),
              Text(widget.name),
            ],
          ),
          const SizedBox(height: 40),
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
              Text(widget.email),
            ],
          ),
          SizedBox(height: 40),
          Row(
            children: [
              SizedBox(
                width: 50,
              ),
              Icon(
                Icons.phone,
                color: Color(0xffF88E8E),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                width: 200,
                child: Text(widget.phnumber.toString()),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            children: [
              SizedBox(
                width: 50,
              ),
              Icon(
                Icons.home,
                color: Color(0xffF88E8E),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                width: 200,
                child: Text(widget.address),
              ),
            ],
          ),
          SizedBox(
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
                    print(list);
                  },
                  child: Text("Confirm"),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
