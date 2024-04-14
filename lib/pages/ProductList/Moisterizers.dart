import 'package:flutter/material.dart';
import 'package:skincare/pages/DescriptionPage.dart';

Widget listItem(String imgLocation, amt, prdName, context){
  return GestureDetector(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Description(prdName: prdName, Amt: amt, imgLocation: imgLocation)));
    },
    child: Card(
      color: Colors.white,
      child: Container(
        height: 200,
        width: 150,
        child: Column(
          children: [
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(imgLocation)
                )
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(prdName, style: TextStyle(fontSize:20, fontWeight:FontWeight.bold),),
                Text(amt)
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
Widget moisturizerList(context){
  return ListView(
    shrinkWrap: true,
    scrollDirection: Axis.horizontal,
    physics: ScrollPhysics(),
    children: [
      listItem("assests/m1.jpg", "400INR", "Nivea Men",context),
      SizedBox(width: 30,),
      listItem("assests/m2.jpg", "325INR", "The Derma", context)
    ],
  );
}

Widget sunScreenList(context){
  return ListView(
    shrinkWrap: true,
    scrollDirection: Axis.horizontal,
    physics: ScrollPhysics(),
    children: [
      listItem("assests/s1.jpg", "350INR", "Alpha Men",context),
      SizedBox(width: 30,),
      listItem("assests/s1.jpg", "350INR", "Alpha Men",context),
    ],
  );
}