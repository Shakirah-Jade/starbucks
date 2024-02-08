import 'package:flutter/material.dart';
import 'package:starbucks/detail.dart';

void main() => runApp(Starbuckscoffee());

class Starbuckscoffee extends StatelessWidget {
  const Starbuckscoffee({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selecteditem = 'All Products';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 15.0),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_back),
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15.0, right: 15.0),
                child: Stack(
                  children: [
                    Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.transparent),
                    ),
                    Container(
                      height: 40.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Color(0xFF116D51)),
                      child: Center(
                        child: Icon(
                          Icons.shopping_basket,
                          color: Colors.white,
                          size: 20.0,
                        ),
                      ),
                    ),
                    Positioned(
                        top: 25.0,
                        right: 30.0,
                        child: Container(
                          height: 20.0,
                          width: 20.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.red),
                          child: Center(
                            child: Text(
                              '8',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Colors.white),
                            ),
                          ),
                        ))
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              'StarBucks Coffee',
              style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 22.0,
                  fontWeight: FontWeight.w400),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.0, top: 15.0, bottom: 15.0),
            child: Container(
              height: 100.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _builditem('All Products', 59),
                  _builditem('Espresso', 17),
                  _builditem('Iced Tea', 20),
                  _builditem('Espresson', 27),
                  _builditem(' Tea', 25)
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.0, top: 15.0, bottom: 15.0),
            child: Container(
              height: MediaQuery.of(context).size.height - 500.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildcoffeeitem('assets/cup.jpg', 'Latte with turmeric',
                      'Iced Coffee', '2.99'),
                  _buildcoffeeitem('assets/cup2.jpg', 'Latte with turmeric',
                      'Iced Coffee', '2.99'),
                  _buildcoffeeitem('assets/cup3.jpg', 'Latte with turmeric',
                      'Iced Coffee', '2.99'),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: Text(
              'New Trend',
              style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 22.0,
                  fontWeight: FontWeight.w400),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.0, right: 15.0),
            child: Container(
              height: 170.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15.0),
                  ),
                  image: DecorationImage(
                      image: AssetImage('assets/cup.jpg'), fit: BoxFit.cover)),
            ),
          )
        ],
      ),
    );
  }

  _buildcoffeeitem(String imgpath, String prdtname, String type, String price) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Container(
        height: 250.0,
        width: 200.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 4.0,
                blurRadius: 4.0)
          ],
        ),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 200.0,
                  width: 225.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15.0),
                        topRight: Radius.circular(15.0),
                      ),
                      image: DecorationImage(
                          image: AssetImage(imgpath), fit: BoxFit.cover)),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    prdtname,
                    style: TextStyle(
                        fontFamily: 'OpenSans',
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    type,
                    style: TextStyle(
                        fontFamily: 'OpenSans',
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0,
                        color: Colors.grey),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Container(
                    height: 0.4,
                    color: Colors.grey.withOpacity(0.6),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$' + price,
                        style: TextStyle(
                            fontFamily: 'OpenSans',
                            fontWeight: FontWeight.bold,
                            fontSize: 19.0),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => DetailPage()));
                        },
                        child: Container(
                          height: 30.0,
                          width: 30.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: Colors.grey.withOpacity(0.2)),
                          child: Center(
                            child: Icon(
                              Icons.add,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  _builditem(String name, int count) {
    return Padding(
      padding: EdgeInsets.only(right: 15.0, top: 10.0, bottom: 10.0, left: 4.0),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        curve: Curves.easeIn,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: switchHighlight(name),
            boxShadow: [
              BoxShadow(
                  blurRadius: 4.0, spreadRadius: 2.0, color: switchShadow(name))
            ]),
        height: 50.0,
        width: 125.0,
        child: InkWell(
          onTap: () {
            selectproduct(name);
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  count.toString(),
                  style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                      color: switchHighlightColor(name)),
                ),
              ),
              SizedBox(
                height: 7.0,
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  name,
                  style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                      color: switchHighlightColor(name)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  selectproduct(pdtname) {
    setState(() {
      selecteditem = pdtname;
    });
  }

  switchHighlight(pdtname) {
    if (pdtname == selecteditem) {
      return Color(0xFF116D51);
    } else {
      return Colors.grey.withOpacity(0.3);
    }
  }

  switchHighlightColor(pdtname) {
    if (pdtname == selecteditem) {
      return Colors.white;
    } else {
      return Colors.black;
    }
  }

  switchShadow(pdtname) {
    if (pdtname == selecteditem) {
      return Color(0xFF116D51).withOpacity(0.4);
    } else {
      return Colors.transparent;
    }
  }
}
