import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:personarandom/Model/Model_persone.dart';

Widget listInfo(ModelDatos data){

  return Column(
    children: [
      Padding(
        padding: EdgeInsets.only(left:20, right: 20, top:20),
        child: Text(
          "B A S I C     I N F O R M A T I O N",
          style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'MontserratAlternates', fontSize: 15),
        ),
      ),
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: Color.fromARGB(255, 66, 66, 66),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 44, 44, 44).withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        margin: EdgeInsets.only(top:10.0, right: 20, left: 20),
        width: double.maxFinite,
        height: 180.0,
        child: Center(
          child: RichText(
            text: TextSpan( 
              style: new TextStyle(
                fontSize: 15.0,
                color: Colors.white,
              ),
              children: <TextSpan>[
                //Padding(padding: EdgeInsets.only(top: 10.0)),
                new TextSpan(text: 'Name: ', style: new TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontFamily: 'PublicSans')),
                new TextSpan(text: data.firstname + " " + data.lastname , style: new TextStyle(color: Colors.white)),
                new TextSpan(text: '\n\nUsername: ', style: new TextStyle(fontWeight: FontWeight.bold, color: Colors.white,fontFamily: 'PublicSans')),
                new TextSpan(text: data.username, style: new TextStyle(color: Colors.white)),
                new TextSpan(text: '\n\nEmail: ', style: new TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontFamily: 'PublicSans')),
                new TextSpan(text: data.email, style: new TextStyle(color: Colors.white)),
                new TextSpan(text: '\n\nPhone: ', style: new TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontFamily: 'PublicSans')),
                new TextSpan(text: data.phone, style: new TextStyle(color: Colors.white)),
                new TextSpan(text: '\n\nCity/Country: ', style: new TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontFamily: 'PublicSans')),
                new TextSpan(text: data.city + " - " + data.country, style: new TextStyle(color: Colors.white)),
              ],
            ),
          ),
        ),
      ),
    ],
  );
}


