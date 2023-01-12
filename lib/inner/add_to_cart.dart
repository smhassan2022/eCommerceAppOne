import 'package:flutter/material.dart';

import '../Model/product_img_list.dart';
import '../main_categories.dart';

class AddCart extends StatefulWidget {


  const AddCart({Key? key,}) : super(key: key);

  @override
  _AddCartState createState() => _AddCartState();
}

class _AddCartState extends State<AddCart> {



 List<ProductImgListModel> productThumbs=[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add to Cart"),
      ),

      body: ListView.builder(
        itemCount: cartproductlist.length,
        itemBuilder: (context, index) => Container(
          color: Colors.grey,
          margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            child: ListTile(
              title: Text("${cartproductlist[index].productName}"),
              leading: Image.asset("${cartproductlist[index].productImage}"),
            ),
          ),


      ),

    );
  }
}
