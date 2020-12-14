import 'package:flutter/material.dart';
import 'package:turkcell_seyir/screens/homePage.dart';
import 'package:turkcell_seyir/widgets/customPageSlider.dart';
import 'package:turkcell_seyir/widgets/seyirButton.dart';

List<Container> pageList = [
  Container(
        child: Column(
          children: [
            Text("TÜRKİYE'Yİ BİR DE KENDİN KEŞFETMEYE HAZIR MISIN?",
                style: TextStyle(
                    color: Colors.white, fontSize: 30, fontFamily: 'hkn')),
            Padding(
              padding: const EdgeInsets.only(top:8.0),
              child: Text("Seyahat deneyimlerinizin seyrini değiştirecek sosyal platform", style: TextStyle(fontSize: 23, fontFamily: 'hkn', color: Colors.white),),
            )
          ],
        )),
  Container(
        child: Column(
          children: [
            Text("PANDEMİ BİTTİ ! ŞİMDİ GEZMENİN TAM ZAMANI",
                style: TextStyle(
                    color: Colors.white, fontSize: 30, fontFamily: 'hkn')),
            Padding(
              padding: const EdgeInsets.only(top:8.0),
              child: Text("Yeni yerler keşfetmek için yeterince beklemedin mi?", style: TextStyle(fontSize: 23, fontFamily: 'hkn', color: Colors.white),),
            )
          ],
        )),
  Container(
        child: Column(
          children: [
            Text("TURKCELL AYRICALIKLARI İLE BİRÇOK fIRSAT İLE SEN DE GEZ",
                style: TextStyle(
                    color: Colors.white, fontSize: 30, fontFamily: 'hkn')),
            Padding(
              padding: const EdgeInsets.only(top:8.0),
              child: Text("Yeni maceralara yelken açarken Turkcell kampanyaları ile daha çok gez", style: TextStyle(fontSize: 23, fontFamily: 'hkn', color: Colors.white),),
            )
          ],
        ))
];

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset("assets/suzan-demir-hmhAqnyozSA-unsplash.jpg",
                fit: BoxFit.cover),
                
            Container(
              color: Theme.of(context).primaryColor.withOpacity(0.7),
              child: Padding(
                padding:
                    const EdgeInsets.all(20.0) + const EdgeInsets.only(top: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(width: 160, child: Image.asset("assets/4.png")),
                    Container(
                  height: 200,
                      color: Colors.transparent,
                      child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20.0),
                            child: CustomSlider(pages: pageList),
                          )),
                    ),
                    Column(
                      children: [
SeyirButton("Giriş Yap"),
                    Text("Kayıt Ol", style: TextStyle(fontFamily: 'hkn', fontSize: 20, color: Colors.white),)
                      ],
                    ),
                    SizedBox()
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


