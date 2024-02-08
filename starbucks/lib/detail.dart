import 'package:flutter/material.dart';
import 'package:starbucks/main.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
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
                  onPressed: () {
                    Navigator.of(context).pop(
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
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
            padding: EdgeInsets.only(left: 15.0, top: 15.0, bottom: 15.0),
            child: Container(
              height: 200.0,
              width: 200.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildcoffee('assets/cup.jpg'),
                  _buildcoffee('assets/cup2.jpg'),
                  _buildcoffee('assets/cup3.jpg'),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 35.0, top: 10.0),
            child: Text(
              'Iced Coffee',
              style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey.withOpacity(0.6)),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 35.0, top: 10.0),
            child: Text(
              'Latte with Turmeric',
              style: TextStyle(
                fontFamily: 'OpenSans',
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 35.0, top: 10.0, right: 15.0),
            child: Text(
              'Returns a new color that matches this color with the alpha channel replaced with the given opacity (which ranges from 0.0 to 1.0) Out of range values will have unexpected effects.Returns a new color that matches this color with the alpha channel replaced with the given opacity (which ranges from 0.0 to 1.0) Out of range values will have unexpected effects.',
              style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey.withOpacity(0.6)),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 35.0, top: 30.0, right: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 15.0),
                  child: Text(
                    'Quality',
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontSize: 20.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15.0),
                  child: Text(
                    '8',
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontSize: 20.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: EdgeInsets.only(left: 35.0, top: 30.0, right: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 15.0),
                  child: Text(
                    'Cost',
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontSize: 20.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15.0),
                  child: Text(
                    '\$ 2,99',
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontSize: 20.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 35.0, top: 50.0, right: 25.0),
            child: InkWell(
              onTap: () {},
              child: Container(
                height: 50.0,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Color(0xFF116D51),
                ),
                child: Center(
                  child: Text(
                    'Add to Order',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _buildcoffee(String imgpath) {
    return Padding(
      padding: EdgeInsets.only(left: 15.0, top: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 200.0,
            width: 200.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              image: DecorationImage(
                  image: AssetImage(imgpath), fit: BoxFit.cover),
            ),
          )
        ],
      ),
    );
  }
}
