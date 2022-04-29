import 'package:Shop_App/screens/product_detail.dart';
import 'package:flutter/material.dart';
class Productitem extends StatelessWidget {
  final String id;
  final String title;
  final String imageurl;
  Productitem(this.title, this.imageurl, this.id);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
          child: GridTile(
        child: GestureDetector(
          onTap: (){
            Navigator.of(context).pushNamed(ProductDetail.routeName,arguments: id);
          },
     child: Image.network(
imageurl,
            fit: BoxFit.cover,
          ),
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          leading: IconButton(icon: Icon(Icons.favorite,color: Colors.amber,), onPressed: null) ,
          title: Text(
            title,
            textAlign: TextAlign.center,
          ),
          trailing:IconButton(icon: Icon(Icons.shopping_basket,color: Colors.amber), onPressed: null) ,
        ),
      ),
    );
  }
}