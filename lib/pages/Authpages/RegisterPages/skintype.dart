import 'package:flutter/material.dart';

class SkinType extends StatefulWidget {
  const SkinType({super.key});

  @override
  State<SkinType> createState() => _SkinTypeState();
}

class _SkinTypeState extends State<SkinType> {
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
