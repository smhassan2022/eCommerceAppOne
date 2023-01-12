import 'package:flutter/material.dart';
import 'Model/productModel.dart';
import 'inner/product_details.dart';

class MainCategories extends StatefulWidget {
  const MainCategories({Key? key}) : super(key: key);

  @override
  State<MainCategories> createState() => _MainCategoriesState();
}
List<ProductModel> cartproductlist=[];

class _MainCategoriesState extends State<MainCategories> {

  ProductModel productModel1 = ProductModel (productNames: "Perfume secret desire", productDescription: "lorem lipsum dolar", discount: 30, productPrice: 3000, productRating: 4, productImages: "assets/images/products/pro-img02.png");
  ProductModel productModel2 = ProductModel(productNames: "Perfume two", productImages: "assets/images/products/pro-img03.png", productDescription: "dummay text", productPrice: 2200, discount: 10, productRating: 2);


  List<ProductModel> productlist=[];

  @override
  void initState() {
    productlist.add(productModel1);
    productlist.add(productModel2);

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        itemCount: productlist.length,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 6.0,
            mainAxisSpacing: 6.0 ),
        itemBuilder: (context, index) => shoppingCard(index),
      ),
    );
  }

  shoppingCard(i) {


    ProductModel p=productlist[i];
    return Container(

      padding: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.shade200,
        boxShadow: [
          BoxShadow(color: Colors.grey.shade50, spreadRadius: 3),
        ],
      ),
      child: GestureDetector(
        onTap: (){
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ProductDetailPage(p),
                ),
              );
        },
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.black)),
                  onPressed: (){},
                  child: Text("${p.productDiscount!}", style: TextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.bold),),),
                Icon(Icons.add_shopping_cart_outlined),
              ],
            ),
            Image.asset(p.productImage!, height: 80,),
            Text("${p.productName}",style: TextStyle(fontSize: 12, color: Colors.black, fontWeight: FontWeight.normal),),
            Text("${p.price}",style: TextStyle(fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold),),

            // Text("Perfume for men", style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),),
            // Text("Just in PKR 3200", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),


          ],
        ),
      ),
    );
  }
}


