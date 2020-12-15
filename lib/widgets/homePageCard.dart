import 'package:flutter/material.dart';
import 'package:turkcell_seyir/widgets/homePageButton.dart';
class HomePageWelcomeCard extends StatelessWidget {
  const HomePageWelcomeCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      //Image.asset("assets/giuseppe-mondi-OIbcmFyMDbo-unsplash.jpg")
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image:
                  AssetImage("assets/giuseppe-mondi-OIbcmFyMDbo-unsplash.jpg")),
          //color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(15)),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Theme.of(context).primaryColor.withOpacity(0.6)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.menu, color: Colors.white, size: 32),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 32,
                  ),
                )
              ],
            ),
            Container(height: 60, child: Image.asset("assets/4.png")),
            HomePageButton()
          ],
        ),
      ),
    );
  }
}