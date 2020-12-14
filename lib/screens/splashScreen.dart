import 'dart:async';
import 'package:flutter/material.dart';
import 'package:turkcell_seyir/screens/loginPage.dart';


class AnimatedSplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => new SplashScreenState();
}

class SplashScreenState extends State<AnimatedSplashScreen>
    with SingleTickerProviderStateMixin {
  var _visible = true;

  AnimationController animationController;
  Animation<double> animation;

  startTime() async {
    var _duration = new Duration(seconds: 3);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LoginPage(),
              ));
  }

  @override
  void initState() {
    super.initState();
    animationController = new AnimationController(
        vsync: this, duration: new Duration(seconds: 2));
    animation =
        new CurvedAnimation(parent: animationController, curve: Curves.easeOut);

    animation.addListener(() => this.setState(() {}));
    animationController.forward();

    setState(() {
      _visible = !_visible;
    });
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Theme.of(context).primaryColor,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          /*new Column(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(padding: EdgeInsets.only(bottom: 30.0),child:new Text(
                'SEYİR',
                style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700),
              )),
              

          ],),*/
          Image.asset("assets/suzan-demir-hmhAqnyozSA-unsplash.jpg", fit: BoxFit.cover,),
          Container(
            color: Theme.of(context).primaryColor.withOpacity(0.9),
            child:new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset(
                    'assets/6.png',
                    width: animation.value * 100,
                    height: animation.value * 100,
                  ),
                ),
              ),
              
            ],
          )
          )
        ],
      ),
    );
  }
    }