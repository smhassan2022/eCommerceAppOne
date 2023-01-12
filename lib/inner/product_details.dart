import 'package:flutter/material.dart';

import 'package:shopping_app_v3/main_categories.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../Model/productModel.dart';
import 'add_to_cart.dart';

class ProductDetailPage extends StatefulWidget {

  ProductModel p;
  ProductDetailPage(this.p);

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {

  late ProductModel productModel;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    productModel=widget.p;
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffefefef),
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
      ),
      body: Container(

        decoration: BoxDecoration(
          //color: Colors.red,
          image: DecorationImage(
            image: AssetImage("assets/images/bg-img.png"),
            fit: BoxFit.fill,
          ),
        ),
        padding: EdgeInsets.all(20),
        child: Column(

          children: [
            Image.asset("${productModel.productImage}"),
            Container(
              width: double.infinity,
              child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("${productModel.productName}", style: TextStyle(fontSize: 16, color: Colors.black87, fontWeight: FontWeight.normal),),
                  SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("${productModel.price}", style: TextStyle(fontSize: 20, color: Colors.black87, fontWeight: FontWeight.bold),),
                      Text("Available in stock", style: TextStyle(fontSize: 12, color: Colors.black87, fontWeight: FontWeight.normal),),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      RatingBar.builder(
                        initialRating: productModel.rating! ,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemSize: 20,
                        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.orange,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Container(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        Text("Description", style: TextStyle(fontSize: 20, color: Colors.black87, fontWeight: FontWeight.bold),),
                        SizedBox(height: 10,),
                        Text("${productModel.description}",
                          style: TextStyle(fontSize: 14, color: Colors.black87, fontWeight: FontWeight.normal, height: 1.5,),
                        ),
                        SizedBox(height: 20,),
                        SizedBox(
                            width: double.infinity, // <-- Your width
                            height: 50, // <-- Your button height

                            child:  ElevatedButton(
                              onPressed: (){
                                cartproductlist.add(productModel);
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> AddCart()));
                              },
                              style: const ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll<Color>(Colors.orange),
                              ),
                              child: Text("Add to cart", style: TextStyle(fontSize: 20),),),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
