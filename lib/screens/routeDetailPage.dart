import 'package:flutter/material.dart';

class RouteDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
              child: Column(
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.menu, color: Theme.of(context).primaryColor, size: 32),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(width:90, child: Center(child: Image.asset("assets/2.png"))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.search,
                      color: Theme.of(context).primaryColor,
                      size: 32,
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Container(
                  height: MediaQuery.of(context).size.height*0.3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage("https://images.unsplash.com/photo-1522962522847-1fd1ddff1379?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1350&q=80")
                    ) 
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.star, size: 18,),
                      Icon(Icons.star, size: 18,),
                      Icon(Icons.star, size: 18,),
                      Icon(Icons.star, size: 18,),
                      Icon(Icons.star_half, size: 18,),
                      Text("4.5/5", style: TextStyle(fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(backgroundColor: Theme.of(context).accentColor,  child: Center(child: Text("E", style: TextStyle(color: Colors.white),),),),
                  ),
                  Text("Enes Alıcıoğlu"),
                  SizedBox(width: 10,),
                  Expanded(
                                      child: Container(
                      height: 100,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal:8.0),
                            child: Container(
                              height: 100,
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage("https://images.unsplash.com/photo-1508786301-5d6544666ba2?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1267&q=80")
                                )
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal:8.0),
                            child: Container(
                              height: 100,
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage("https://images.unsplash.com/photo-1526048598645-62b31f82b8f5?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80")
                                )
                              ),
                            ),
                          )
                        
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Stack(
                                  children: [
                                    Container(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text("Kapadokya \nKültür Rotası",
                style: TextStyle(
                    color: Theme.of(context).primaryColor, fontSize: 25, fontFamily: 'hkn')),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.favorite, size: 30,),
                    )
                                              ],
                                            ),
            Padding(
              padding: const EdgeInsets.only(top:8.0),
              child: Text("Geçtiğimiz aylarda katılmış bulunduğum keyifli rotada yaşadığım deneyimleri paylaşmak istedim. Seyir uygulaması sayesinde birçok fırsat elde ettim...", style: TextStyle(fontSize: 18, fontFamily: 'hkn', color: Theme.of(context).primaryColor),),
            )
                                          ],
                                        ),
                                      ),
                  decoration: BoxDecoration(
                    color: Color(0xffE8E8E8),
                    borderRadius: BorderRadius.circular(15)
                  ),
                ),
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



