import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomeScreen(),
    );
  }
}

class MyHomeScreen extends StatefulWidget {
  @override
  _MyHomeScreenState createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FlutterLogo(
          colors: Colors.green,
          size: 25.0,
        ),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
          color: Colors.grey,
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
            color: Colors.grey,
          ),
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Stack(
            children: [
              Container(
                alignment: Alignment(0.0, -0.40), // x-axis, y-axix
                height: 100.0,
                color: Colors.white,
                child: Text(
                  "Get Coaching",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(25.0, 90.0, 25.0, 0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 2.0,
                      color: Colors.grey,
                    ),
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(25.0, 25.0, 5.0, 10.0),
                          child: Text(
                            "YOU HAVE",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(25.0, 40.0, 5.0, 20.0),
                          child: Text(
                            "206",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 40.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 100.0,
                    ),
                    Container(
                      width: 125.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: FlatButton(
                        color: Colors.greenAccent[100].withOpacity(0.5),
                        highlightColor: Colors.greenAccent[100],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Buy more",
                          style: TextStyle(
                            color: Colors.green[500],
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 40.0),
          Container(
            padding: EdgeInsets.only(left: 25.0, right: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "MY COACHES",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "VIEW PAST SESSIONS",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          GridView.count(
            crossAxisCount: 2,
            primary: false, //this will allow the default scroll
            crossAxisSpacing: 2.0,
            mainAxisSpacing: 4.0,
            shrinkWrap: true,
            children: [
              _buildCard('Tom', 'Available', 1),
              _buildCard('Tom', 'Away', 2),
              _buildCard('Tom', 'Away', 3),
              _buildCard('Tom', 'Available', 4),
              _buildCard('Tom', 'Available', 5),
              _buildCard('Tom', 'Available', 6),
              _buildCard('Tom', 'Available', 7),
              _buildCard('Tom', 'Available', 8),
              _buildCard('Tom', 'Available', 9),
              _buildCard('Tom', 'Available', 10),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCard(String name, String status, int cardIndex) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 7.0,
      child: Column(
        children: [
          SizedBox(
            height: 12.0,
          ),
          Stack(
            children: [
              Center(
                child: Container(
                  height: 60.0,
                  width: 60.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.green,
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://images.pexels.com/photos/3817583/pexels-photo-3817583.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260',
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 70.0),
                child: Column(
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      status,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(top: 132.6),
                  width: 175.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: status == "Away" ? Colors.grey : Colors.green,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Request",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      margin: cardIndex.isEven
          ? EdgeInsets.fromLTRB(10, 0.0, 25.0, 10.0)
          : EdgeInsets.fromLTRB(25, 0.0, 5.0, 10.0),
    );
  }
}
