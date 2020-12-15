import 'package:flutter/material.dart';
import 'package:turkcell_seyir/screens/findRoutePage.dart';
import 'package:turkcell_seyir/screens/routeDetailPage.dart';
import 'package:turkcell_seyir/widgets/homePageCard.dart';

class HomePage extends StatelessWidget {
  List<String> routeList = [
    "https://images.unsplash.com/photo-1526048598645-62b31f82b8f5?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80",
    "https://images.unsplash.com/photo-1522962522847-1fd1ddff1379?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1350&q=80",
    "https://images.unsplash.com/photo-1511207538754-e8555f2bc187?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=564&q=80",
    "https://images.unsplash.com/photo-1508786301-5d6544666ba2?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1267&q=80",
    "https://images.unsplash.com/photo-1527838700789-f9b453e73655?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=2119&q=80",
    "https://images.unsplash.com/photo-1526573119850-05e6f863364b?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=700&q=80"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomePageWelcomeCard(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("ROTA ÖNERİLERİ",
                  style: TextStyle(fontFamily: "hkn", fontSize: 20)),
            ),
            Expanded(
              child: Container(
                child: ListView(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Column(
                        children: [
                          RouteItem(routeList: routeList, index: 0),
                          RouteItem(routeList: routeList, index: 5),
                          RouteItem(routeList: routeList, index: 1)
                        ],
                      ),
                      Column(
                        children: [
                          RouteItem(routeList: routeList, index: 2),
                          RouteItem(routeList: routeList, index: 3),
                          RouteItem(routeList: routeList, index: 4)
                        ],
                      )
                    ],)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RouteItem extends StatelessWidget {
  const RouteItem({
    Key key,
    @required this.routeList,
    @required this.index
  }) : super(key: key);
  final int index;
  final List<String> routeList;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => RouteDetailPage(),
              ));
      },
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: MediaQuery.of(context).size.width*0.45,
          child: Image.network(routeList[index])),
      ),
    );
  }
}




/*
class HomePage extends StatefulWidget {
  
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //drawer: YanCekmece(),
        backgroundColor: Colors.black,
        
        body: Anasayfa());
  }
}

class Anasayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xfff4f4f2), Color(0xfff4f4f2)]
                      //colors: [Colors.white, Colors.white]
                    )
                  ),),
                
        Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Image.asset("assets/1.png"),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    color: Colors.transparent,
                  ),
                ),
              ),
              flex: 5,
            ),
            Expanded(
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 8.0,
                                top: 8.0,
                              ),
                              child: GestureDetector(
                                onTap: () {},
                                child: Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.search, color: Colors.white54, size: 50,),
                                      SizedBox(height: 10,),
                                      Text(
                                        "Rota Bul",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20)),
                                    color: Theme.of(context).primaryColor,
                                    //color:Colors.white54
                                  ),
                                ),
                              ),
                            ),
                            flex: 5,
                          ),
                          VerticalDivider(
                            width: 10,
                          ),
                          Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(right: 8.0, top: 8.0),
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(topRight: Radius.circular(20)),
                                      color: Theme.of(context).accentColor,
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.add_location_alt, color: Colors.white54, size: 50,),
                                        SizedBox(height: 10,),
                                        Text(
                                          "Rota Ekle",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              flex: 5)
                        ],
                      ),
                      flex: 5,
                    ),
                    Divider(
                      height: 10,
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, bottom: 8.0),
                              child: GestureDetector(
                                onTap: () {},
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20)),
                                    color:Theme.of(context).accentColor,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.local_activity, color: Colors.white54, size: 50,),
                                      SizedBox(height: 10,),
                                      Text(
                                        "Etkinlikler",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            flex: 5,
                          ),
                          VerticalDivider(
                            width: 10,
                          ),
                          Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(right: 8.0, bottom: 8.0),
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(20)),
                                      //color: Color(0xff832385),
                                      color: Theme.of(context).primaryColor
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.location_history, color: Colors.white54, size: 50,),
                                        SizedBox(height: 10,),
                                        Text(
                                          "Rotalarım",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              flex: 5)
                        ],
                      ),
                      flex: 5,
                    )
                  ],
                ),
                flex: 6)
          ],
        ),
      ],
    );
  }
}
*/
