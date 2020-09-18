import 'package:flutter/material.dart';

class Explore extends StatefulWidget {
  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  int _bottomIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: Color(0xFF18D191),
        elevation: 0,
        currentIndex: _bottomIndex,
        onTap: (int index) {
          setState(() {
            _bottomIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.local_offer),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.mail),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.notifications),
          ),
          
        ],),
      body: MainContent(),
    );
  }
}

class MainContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Text('Explore', 
                    style: TextStyle(fontSize: 22.0))
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(right: 5),
                        height: 100, 
                        decoration: BoxDecoration(
                          color: Color(0xFFFC6A7F),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.wallet_membership,
                              color: Colors.white,
                            ),
                            SizedBox(height: 10.0),
                            Text('Membership', 
                            style: TextStyle(color: Colors.white),
                            )
                          ],
                        )
                      )
                    ),
                    Expanded(
                      child: Container(
                        height: 100, 
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 48, 
                              margin: EdgeInsets.only(right: 5),
                              decoration: BoxDecoration(
                                color: Color(0xFF18D191),
                                borderRadius: BorderRadius.circular(10.0),
                             ),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                               children: [
                                 Icon(Icons.local_offer, color: Colors.white, size: 18),
                                 Text('Offers', style: TextStyle(color: Colors.white))
                                ],
                               )
                            ),
                            SizedBox(height: 4),
                             Container(
                              height: 48, 
                              margin: EdgeInsets.only(right: 5),
                              decoration: BoxDecoration(
                                color: Color(0xFFFFCE56),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                               children: [
                                 Icon(Icons.collections_bookmark, color: Colors.white, size: 18),
                                 Text('Bookmark', style: TextStyle(color: Colors.white))
                                ],
                               )
                            )
                          ],
                        )
                      )
                    ),
                    Expanded(
                      child: Container(
                        height: 100, 
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 48, 
                              margin: EdgeInsets.only(right: 5),
                              decoration: BoxDecoration(
                                color: Color(0xFF45E0EC),
                                borderRadius: BorderRadius.circular(10.0),
                             ),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                               children: [
                                 Icon(Icons.home_repair_service, color: Colors.white, size: 18),
                                 Text('Services', style: TextStyle(color: Colors.white))
                                ],
                               )
                            ),
                            SizedBox(height: 4),
                             Container(
                              height: 48, 
                              margin: EdgeInsets.only(right: 5),
                              decoration: BoxDecoration(
                                color: Color(0xFF45B0AC),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                               children: [
                                 Icon(Icons.data_usage, color: Colors.white, size: 18),
                                 Text('Analytics', style: TextStyle(color: Colors.white))
                                ],
                               )
                            )
                          ],
                        )
                      )
                    ),          
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    Expanded(
                      child: Text('Popular Trends', 
                    style: TextStyle(fontSize: 22.0)),
                    ),
                    Expanded(
                      child: Text('View All', 
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF18D191)
                        ))
                    ),
                  ],
                ),
                SizedBox(height: 6),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 150, 
                        child: Column(
                          children: [
                            Container(
                              height: 120, 
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6.0),
                                image: DecorationImage(
                                  image: NetworkImage(
                                    'https://www.lovethispic.com/uploaded_images/148476-Matte-Black-Stiletto-Nails.jpg'),
                                  fit: BoxFit.cover,
                                )
                              ),
                            ),
                            SizedBox(height: 3),
                            Text('Matte Boots', style: TextStyle(fontSize: 14),)
                          ],
                        )
                      )
                    ),
                    SizedBox(width: 5),
                    Expanded(
                      child: Container(
                        height: 150, 
                        child: Column(
                          children: [
                            Container(
                              height: 120, 
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6.0),
                                image: DecorationImage(
                                  image: NetworkImage(
                                    'https://i.pinimg.com/originals/c9/04/c0/c904c08487377b4bce7dcde403eb8efc.jpg'),
                                  fit: BoxFit.cover,
                                )
                              ),
                            ),
                            SizedBox(height: 3),
                            Text('Matte Bottle', style: TextStyle(fontSize: 14),)
                          ],
                        ),
                      )
                    ),
                    SizedBox(width: 5),
                    Expanded(
                      child: Container(
                        height: 150, 
                        child: Column(
                          children: [
                            Container(
                              height: 120, 
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6.0),
                                image: DecorationImage(
                                  image: NetworkImage(
                                    'https://i.pinimg.com/564x/54/90/88/549088ffa425896184e6c49f3d4770b5.jpg'),
                                  fit: BoxFit.cover,
                                )
                              ),
                            ),
                            SizedBox(height: 3),
                            Text('Air Pods', style: TextStyle(fontSize: 14),)
                          ],
                        )
                      )
                    )
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    Expanded(
                      child: Text('Services', 
                    style: TextStyle(fontSize: 22.0)),
                    ),
                    Expanded(
                      child: Text('View All', 
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          color: Color(0xFF18D191)
                        ))
                    ),
                  ],
                ),
                SizedBox(height: 6),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 150, 
                        child: Column(
                          children: [
                            Container(
                              height: 120, 
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6.0),
                                image: DecorationImage(
                                  image: NetworkImage(
                                    'https://i.pinimg.com/564x/16/98/1a/16981a51cbda380de10177ebe5d7e4bf.jpg'),
                                  fit: BoxFit.cover,
                                )
                              ),
                            ),
                            SizedBox(height: 3),
                            Text('Mob Gadgets', style: TextStyle(fontSize: 14),)
                          ],
                        )
                      )
                    ),
                    SizedBox(width: 5),
                    Expanded(
                      child: Container(
                        height: 150, 
                        child: Column(
                          children: [
                            Container(
                              height: 120, 
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6.0),
                                image: DecorationImage(
                                  image: NetworkImage(
                                    'https://i.pinimg.com/originals/26/20/64/2620647ca29e4c6351be8b61969c91df.jpg'),
                                  fit: BoxFit.cover,
                                )
                              ),
                            ),
                            SizedBox(height: 3),
                            Text('Wall Finish', style: TextStyle(fontSize: 14),)
                          ],
                        ),
                      )
                    ),
                    SizedBox(width: 5),
                    Expanded(
                      child: Container(
                        height: 150, 
                        child: Column(
                          children: [
                            Container(
                              height: 120, 
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6.0),
                                image: DecorationImage(
                                  image: NetworkImage(
                                    'https://watchrare.com/wp-content/uploads/2019/11/Blue-Pointer-Men-Watch-Quartz-Casual-Simple-Alloy-Mesh-Matte-Male-Business-Temperament-Calendar-Wrist-Watch.jpg'),
                                  fit: BoxFit.cover,
                                )
                              ),
                            ),
                            SizedBox(height: 3),
                            Text('Rolex Watch', style: TextStyle(fontSize: 14),)
                          ],
                        )
                      )
                    )
                  ],
                )
              ],
            )
          )
        )
      ],
    );
  }
}