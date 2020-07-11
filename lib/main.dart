import 'package:flutter/material.dart';


void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, title: "hello", home: Home());
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFbdc3c7),
      appBar: AppBar(
        title: Center(child: Text("Wallet")),
        backgroundColor: Color.fromARGB(255, 20, 0, 200),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications),
            color: Colors.white,
            onPressed: () {},
          )
        ],
        elevation: 0,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0xFFe67e22), Color(0xFFf1c40f)])),
              accountName: Text("sessionUsername"),
              accountEmail: Text("mail"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80"),
              ),
            ),
            ListTile(
              title: Text("Home"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Prices"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Balance"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Account"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Settings"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Help"),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 240.0,
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 20, 0, 200),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0),
                ),
              ),
              child: Container(
                child: Stack(
                  children: <Widget>[
                    Container(
                      margin:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Current Balance",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              )),
                          Text("USD",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              )),
                        ],
                      ),
                    ),
                    Container(
                      margin:
                      EdgeInsets.symmetric(horizontal: 15, vertical: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("\$32,452",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                              )),
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF2ecc71),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text("+ 3.5%",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      left: 20,
                      child: Text("3 214589 WXB",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          )),
                    ),
                  ],
                ),
                margin: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    gradient: LinearGradient(
                        colors: [Color(0xFFe67e22), Color(0xFFf1c40f)])),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: RaisedButton.icon(
                        onPressed: () {},
                        icon:
                        Icon(Icons.arrow_upward, color: Color(0xff3498db)),
                        color: Colors.white,
                        label: Text("Send"),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        )),
                  ),
                  SizedBox(
                    width: 28,
                  ),
                  Expanded(
                    child: RaisedButton.icon(
                      onPressed: () {},
                      icon:
                      Icon(Icons.arrow_downward, color: Color(0xFF2ecc71)),
                      color: Colors.white,
                      label: Text("Receive"),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.topLeft,
              child: Text(
                "Currency",
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Card(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    child: ListTile(
                      contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      leading: CircleAvatar(
                        backgroundColor: Color(0xffecf0f1),
                        child: Icon(
                          Icons.monetization_on,
                          color: Colors.black,
                        ),
                      ),
                      title: Text("Bitcoin"),
                      trailing: Text("\$8,000"),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    child: ListTile(
                      contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      leading: CircleAvatar(
                        backgroundColor: Color(0xffecf0f1),
                        child: Icon(
                          Icons.monetization_on,
                          color: Colors.black,
                        ),
                      ),
                      title: Text("Bitcoin"),
                      trailing: Text("\$8,000"),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    child: ListTile(
                      contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      leading: CircleAvatar(
                        backgroundColor: Color(0xffecf0f1),
                        child: Icon(
                          Icons.monetization_on,
                          color: Colors.black,
                        ),
                      ),
                      title: Text("Bitcoin"),
                      trailing: Text("\$8,000"),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    child: ListTile(
                      contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      leading: CircleAvatar(
                        backgroundColor: Color(0xffecf0f1),
                        child: Icon(
                          Icons.monetization_on,
                          color: Colors.black,
                        ),
                      ),
                      title: Text("Bitcoin"),
                      trailing: Text("\$8,000"),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text("Search"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.check_box),
            title: Text("Check"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text("Account"),
          ),
        ],
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.white,
        selectedItemColor: Color(0xFFe67e22),
        backgroundColor: Color.fromARGB(255, 20, 0, 200),
      ),
    );
  }
}
