import 'package:flutter/material.dart';
import 'package:skincare/Commons/commons.dart';

class Description extends StatefulWidget {
  final String prdName, Amt, imgLocation;
  const Description({super.key, required this.prdName, required this.Amt, required this.imgLocation});

  @override
  State<Description> createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: ListView(
          children: [
            Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(widget.imgLocation),
                )
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(widget.prdName, style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),),
                Text(widget.Amt,style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                ),),
              ],
            ),
            Text("In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is available."),
            SizedBox(height: 20,),
            Row(
              children: [
                Container(
                  height: 50,
                  width: 300,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Commons.btnColors,
                    borderRadius: BorderRadius.circular(30.0)
                  ),
                  child: Text("Add To Cart", style: Commons.btnFont,),
                ),
                IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart))
              ],

            )
          ],
        ),
      ),
    );
  }
}
