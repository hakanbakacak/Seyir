import 'package:flutter/material.dart';
import 'package:turkcell_seyir/screens/findRoutePage.dart';

class HomePageButton extends StatelessWidget {
  const HomePageButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0) + EdgeInsets.only(bottom: 15),
      child: FlatButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FindRoutePage(),
              ));
        },
        child: Container(
          height: 45,
          width: 280,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Theme.of(context).buttonColor),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Sırala",
                        style: TextStyle(
                            fontFamily: "hkn",
                            color: Colors.white,
                            fontSize: 18)),
                  ),
                  Icon(Icons.sort, color: Colors.white, size: 22)
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Filtrele",
                        style: TextStyle(
                            fontFamily: "hkn",
                            color: Colors.white,
                            fontSize: 18)),
                  ),
                  CircleAvatar(
                    maxRadius: 9,
                    child: Text("4",
                        style: TextStyle(
                            fontFamily: "hkn",
                            color: Colors.white,
                            fontSize: 12)),
                    backgroundColor: Theme.of(context).primaryColor,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
