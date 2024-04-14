import "package:dob_input_field/dob_input_field.dart";
import "package:flutter/material.dart";
import "package:skincare/pages/Authpages/RegisterPages/skintype.dart";

import '../../../Commons/commons.dart';

class Age extends StatefulWidget {
  const Age({super.key});

  @override
  State<Age> createState() => _AgeState();
}

class _AgeState extends State<Age> {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: w,
            height: h,
          ),
          Container(
            height: 400,
            width: 400,
            margin: EdgeInsets.fromLTRB(0, h / 2 + 100, 0, 0),
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assests/authbg.png'))),
          ),
          Container(
            width: w,
            height: h,
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "TELL YOUR AGE",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                DOBInputField(
                  firstDate: DateTime(1900),
                  lastDate: DateTime.now(),
                  showLabel: true,
                  dateFormatType: DateFormatType.YYYYMMDD,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                ),
                SizedBox(
                  height: 20,
                ),
                Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SkinType()));
                    }, child: Text("Next ->", style: TextStyle(
                      fontSize: 15,
                      color: Colors.pink.shade400
                    ),)))
              ],
            ),
          )
        ],
      ),
    );
  }
}
