import 'package:flutter/material.dart';
import 'package:tryingoutamazon/models/product_model.dart';

class ProductCarousal extends StatelessWidget {
  final String title;
  final List<Product> products;
  ProductCarousal({this.title, this.products});

  _product(int index) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      width: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.black54, offset: Offset(0.0, 2.0), blurRadius: 6),
        ],
      ),
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.white,
            child: Image(
              image: AssetImage(products[index].imageUrl),
              height: 100,
              width: 150,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(products[index].name,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  '\$${products[index].price.toStringAsFixed(2)}',
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 4,
                ),
                FlatButton(
                  padding: EdgeInsets.all(4),
                  color: Colors.blueAccent,
                  child: Text(
                    "Add",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {},
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Text(
            title,
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          height: 280,
          child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 10),
              itemCount: products.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, index) {
                return _product(index);
              }),
        )
      ],
    );
  }
}
