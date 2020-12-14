import 'package:flutter/material.dart';
import 'package:turkcell_seyir/screens/homePage.dart';
import 'dart:math' as math;


class SeyirButton extends StatelessWidget {
  String buttonText;
  SeyirButton(String text){
    buttonText = text;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:10.0, top:8.0),
      child: FlatButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(),
              ));
        },
        child: Container(
          height: 43,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),                         
            color: Colors.white),
            child: Stack(
              fit:StackFit.expand,
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                Align(
                  alignment: Alignment.center,
                  child: Text(buttonText, style: TextStyle(fontFamily: 'hkn',fontWeight:FontWeight.bold, color: Theme.of(context).primaryColor, fontSize: 20),)),
                Align(
                  alignment: Alignment.centerRight,
                                child: Padding(
                    padding: const EdgeInsets.only(right:8.0),
                    child: CircleAvatar(
                      backgroundColor: Theme.of(context).primaryColor,
                      child: Transform.rotate(
                        angle: -math.pi/5.0,
                        child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset("assets/5.png", width: 20,),
                    ),
                      ),),
                  ),
                )
              ],),
        ),
      ),
    );
  }
}