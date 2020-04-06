import 'package:flutter/material.dart';
import 'package:tryingoutamazon/models/product_model.dart';
import 'package:tryingoutamazon/screens/CartScreen.dart';
import 'package:tryingoutamazon/widgets/productcarousal.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 5.0,
        leading: Padding(
          padding: EdgeInsets.only(left: 20),
          child: InkResponse(
            onTap: () {},
            child: Icon(
              Icons.menu,
              size: 30,
              color: Colors.black,
            ),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(right: 18.0, top: 10),
          child: Image(
            image: AssetImage("assets/images/amazon_logo.jpg"),
            height: 30,
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          Stack(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 10, right: 20),
                child: InkResponse(
                  onTap: () {
                    Navigator.push(context,MaterialPageRoute(builder: (_)=>CartScreen()));
                    },
                  child: Icon(
                    Icons.shopping_basket,
                    size: 30,
                    color: Colors.black,
                  ),
                ),
              ),
              Positioned(
                bottom: 8,
                right: 16,
                child: Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.orange,
                  ),
                  child: Center(
                    child: Text(
                      '5',
                      style: TextStyle(
                          fontWeight: FontWeight.w500, color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: InkResponse(
              onTap: () {},
              child: Icon(
                Icons.search,
                size: 30,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Image(
                image: AssetImage("assets/images/samsung_gear_vr.jpg"),
              ),
              Positioned(
                left: 20,
                right: 20,
                bottom: 30,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("POPULAR",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 10,
                    ),
                    Text("The future of",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w500)),
                    Text("virtual reality",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                            fontWeight: FontWeight.bold)),
                    SizedBox(height: 15),
                    Container(
                      padding: EdgeInsets.all(10),
                      height: 70,
                      width: double.infinity,
                      color: Colors.white,
                      child: Row(
                        children: <Widget>[
                          Image(
                            image: AssetImage('assets/images/gear_vr.jpg'),
                            height: 50,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Samsung Gear VR",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "FOR GAMERS",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Container(
                                  width: 60,
                                  color: Colors.orange,
                                  child: FlatButton(
                                    child: Icon(
                                      Icons.arrow_forward,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 15,),
          ProductCarousal(title: "Amazon Prime Deals",products: products,),
          ProductCarousal(title: "Popular Books",products: books,),
          
        ],
      ),
    );
  }
}
