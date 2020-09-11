import 'package:flutter/material.dart';
import 'package:flutter_curver_ui0/data/foodList.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<FoodListModel> _list;

  @override
  void initState() {
    _list = FoodListModel.list;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(43, 200, 80, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(43, 200, 80, 1),
        leading: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 50.0),
                  child: Icon(
                    Icons.list_alt,
                  ),
                ),
                Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ],
        elevation: 0,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Color.fromRGBO(43, 200, 80, 1),
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(
                left: 50,
                top: 50,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Healthy ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        " Food",
                        style: TextStyle(
                          color: Colors.white60,
                          fontSize: 30.0,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Container(
                padding: const EdgeInsets.only(
                  top: 0,
                  left: 50,
                  right: 50,
                ),
                height: 660,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70),
                  ),
                ),
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: _list.length,
                  itemBuilder: (context, index) {
                    return Container(
                      child: Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                              right: 10,
                              top: 10,
                            ),
                            child: Image.asset(
                              _list[index].imageAssetPath,
                              width: 100,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                _list[index].title,
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                _list[index].amount,
                                style: TextStyle(
                                  color: Colors.grey[400],
                                ),
                              )
                            ],
                          ),
                          Spacer(),
                          IconButton(
                            icon: Icon(Icons.add),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
