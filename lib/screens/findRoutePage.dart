import 'package:direct_select/direct_select.dart';
import 'package:flutter/material.dart';
import 'package:turkcell_seyir/widgets/seyirButton.dart';
class FindRoutePage extends StatefulWidget {

  @override
  _FindRoutePageState createState() => _FindRoutePageState();
}

class _FindRoutePageState extends State<FindRoutePage> {
  int selectedIndexCity= 0; // selected index for cities
  int selectedIndexTP = 0; //selected index for trip preferences
  int selectedIndexTD = 0; //selected index for trip duration

  final cities = [
    "Ankara",
    "Eskişehir",
    "İstanbul",
    "İzmir",
    "Adana",
    "Trabzon",
    "Gaziantep",
    "Kayseri",
    "Sivas",
    "Antalya",
    "Batman"
  ];

  final tripPreferences = [
    "Tarih Turizmi",
    "Lezzet Turizmi",
    "Doğa Turizmi",
    "Sağlık ve Termal Turizm",
    "Kış Sporları Turizmi",
    "Dağcılık Turizmi",
  ];

  final tripDuration = [
    "3 Saat",
    "6 Saat",
    "9 Saat",
    "1 Gün",
    "2 Gün",
    "3 Gün",
    "1 Hafta"
  ];

  List<Widget> _buildItems(List<String> list) {
    return list
        .map((val) => MySelectionItem(
              title: val,
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,  
        children: [
          Image.asset("assets/suzan-demir-hmhAqnyozSA-unsplash.jpg",
                fit: BoxFit.cover),
          Container(
            color: Theme.of(context).primaryColor.withOpacity(0.6),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Row(
                    children: [
                      
                    ],),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Şehir Seçiniz"),
                ),
                DirectSelect(
                  itemExtent: 40.0,
                  child: MySelectionItem(isForList: false, title: cities[selectedIndexCity],),
                  onSelectedItemChanged:(value) {
                    setState(() {
                      selectedIndexCity = value;
                    });
                  },
                  items: _buildItems(cities),
                ),
                SizedBox(height: 40,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Turizm Tipi Seçiniz"),
                ),
                DirectSelect(
                  itemExtent: 40.0,
                  child: MySelectionItem(isForList: false, title: tripPreferences[selectedIndexTP],),
                  onSelectedItemChanged:(value) {
                    setState(() {
                      selectedIndexTP = value;
                    });
                  },
                  items: _buildItems(tripPreferences),
                ),
                SizedBox(height: 40,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Gezi Süresini Seçiniz"),
                ),
                DirectSelect(
                  itemExtent: 40.0,
                  child: MySelectionItem(isForList: false, title: tripDuration[selectedIndexTD],),
                  onSelectedItemChanged:(value) {
                    setState(() {
                      selectedIndexTD = value;
                    });
                  },
                  items: _buildItems(tripDuration),
                ),
                SeyirButton("Rota Bul!")
                /*Padding(
                  padding: const EdgeInsets.all(20.0)+ EdgeInsets.only(top:40),
                  child: FlatButton(child: Container(
                    height: 50, 
                    decoration: BoxDecoration(color:Theme.of(context).primaryColor ,borderRadius: BorderRadius.circular(25)),
                    child: Center(child: Text("Rota Bul", style: TextStyle(color: Colors.white70, fontSize: 20),),),
                    ), onPressed: (){},),
                )*/
              ],
            ),
          ),
        ],
      ),
      
    );
  }
}

class MySelectionItem extends StatelessWidget {
  final String title;
  final bool isForList;

  const MySelectionItem({Key key, this.title, this.isForList = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.0,
      child: isForList
          ? Padding(
              child: _buildItem(context),
              padding: EdgeInsets.all(10.0),
            )
          : Card(
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              child: Stack(
                children: <Widget>[
                  _buildItem(context),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Icon(Icons.arrow_drop_down),
                  )
                ],
              ),
            ),
    );
  }

  _buildItem(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      child: Text(title),
    );
  }
}