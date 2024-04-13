import "package:flutter/material.dart";
import "package:skincare/pages/login.dart";

class BannerClass extends StatefulWidget {
  const BannerClass({super.key});

  @override
  State<BannerClass> createState() => _BannerClassState();
}

class _BannerClassState extends State<BannerClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assests/bannerbg.jpg'))),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.black.withOpacity(0.5),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Login()));
              },
              child: Container(
                height: 60,
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.fromLTRB(30, 700, 30, 70),
                decoration: BoxDecoration(
                    color: Colors.pinkAccent.shade400,
                    borderRadius: BorderRadius.circular(30)),
                child: Text(
                  "GET STARTED",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
