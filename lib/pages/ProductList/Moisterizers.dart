import 'package:flutter/material.dart';

Widget listItem(String imgLocation, amt, prdName){
  return Container(
    height: 250,
    width: 250,
    child: Stack(
      children: [
        Container(
          height: 250,
          width: 250,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(60.0),
              ),
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(imgLocation)
              )
          ),
        ),
        Container(
          alignment: Alignment.centerRight,
          height: 100,
          width: 250,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          margin:const EdgeInsets.fromLTRB(0, 180, 0, 0),
          decoration: const BoxDecoration(
            color: Colors.purpleAccent,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(60.0),
            ),
          ),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(prdName, style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,)),
              const SizedBox(width: 10,),
              Text(amt,style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,))
            ],
          ),
        )
      ],
    ),
  );
}
Widget moisturizerList(){
  return ListView(
    shrinkWrap: true,
    scrollDirection: Axis.horizontal,
    physics: ScrollPhysics(),
    children: [
      listItem("assests/m1.jpg", "400INR", "Nivea Men"),
      SizedBox(width: 30,),
      listItem("assests/m2.jpg", "325INR", "The Derma")
    ],
  );
}

Widget sunScreenList(){
  return ListView(
    shrinkWrap: true,
    scrollDirection: Axis.horizontal,
    physics: ScrollPhysics(),
    children: [
      listItem("assests/s1.jpg", "350INR", "Alpha Men"),
      SizedBox(width: 30,),
      listItem("assests/s1.jpg", "350INR", "Alpha Men"),
    ],
  );
}