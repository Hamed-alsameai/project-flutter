import 'package:flutter/material.dart';

import '../myColor.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GridView.builder(
          padding: EdgeInsets.all(30),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 30,
            mainAxisSpacing: 30,
          ),
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {},
              child: Container(
                child: Column(children: [
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.7), // Shadow color
                          spreadRadius: 1, // Spread radius
                          blurRadius: 3,
                        ),
                      ],
                    ),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(7),
                        child: SizedBox(
                            width: 150,
                            height: 110,
                            child: FittedBox(
                                fit: BoxFit.cover,
                                child: Image.asset(
                                  'assets/img/lamp.jfif',
                                )))),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('\$50',style: TextStyle(fontWeight: FontWeight.w500, fontSize:14),),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: myColor,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.7), // Shadow color
                                    spreadRadius: 1, // Spread radius
                                    blurRadius: 3,
                                  ),
                                ],
                              ),
                              child: Icon(Icons.add, color: Colors.white),
                            ),
                          ),
                        ]),
                  ),
                ]),
              ),
            );
          },
        ),
        drawer: Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  UserAccountsDrawerHeader(
                    accountName: Text("app"),
                    accountEmail: Text("app@gmail.com"),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: AssetImage('assets/img/moon.jfif'),
                    ),
                    decoration: BoxDecoration(
                      color: myColor, // Change header background color
                    ),
                  ),
                  Column(
                    children: [
                      ListTile(
                        title: Text("Home"),
                        leading: Icon(Icons.home),
                        onTap: () {},
                      ),
                      ListTile(
                        title: Text("Orders"),
                        leading: Icon(Icons.shopping_cart_checkout),
                        onTap: () {},
                      ),
                      ListTile(
                        title: Text("About"),
                        leading: Icon(Icons.help),
                        onTap: () {},
                      ),
                      ListTile(
                        title: Text("Log out"),
                        leading: Icon(Icons.logout),
                        onTap: () {},
                      ),
                    ],
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(bottom: 15),
                child: Text(
                  '© 2025 All rights reserved.',
                  style: TextStyle(fontSize: 15, color: Colors.grey.shade700),
                ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          elevation: 3,
          shadowColor: Colors.grey,
          iconTheme: IconThemeData(color: Colors.white),
          actions: [
            Stack(
              children: [
                Container(
                  child: Text('5',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w600)),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue.shade300,
                  ),
                  padding: EdgeInsets.all(5),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.shopping_cart),
                  color: Colors.white,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child: Text(
                '\$200',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ],
          title: Text(
            'Home',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: myColor,
        ),
      ),
    );
  }
}
