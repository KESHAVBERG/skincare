import 'package:flutter/material.dart';
import 'package:skincare/pages/Authpages/RegisterPages/age.dart';

import '../../../Commons/commons.dart';


class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

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
            margin: EdgeInsets.fromLTRB(0, h/2+100, 0, 0),
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assests/authbg.png')
                )
            ),
          ),
          Container(
            width: w,
            height: h,
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Name"
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Email"
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Password"
                  ),
                ),
                SizedBox(height: 20,),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Age()));
                  },
                  child: Container(
                    height: 70,
                    width: w,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Commons.btnColors,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text("REGISTER", style: Commons.btnFont,),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 70,
                  width: w,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Commons.btnColors,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text("LOGIN", style: Commons.btnFont,),
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}
