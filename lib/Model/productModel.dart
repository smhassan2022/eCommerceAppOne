
class ProductModel
{
  String?productName;
  String?productImage;
  String?description;
  double?price;
  double?productDiscount;
  double?rating;

  ProductModel ({
  required  String productNames,
  required  String productImages,
  required  String productDescription,
  required  double productPrice,
  required  double discount,
  required  double productRating})
  {

    this.productName = productNames;
    this.productImage = productImages;
    this.description = productDescription;
    this.price = productPrice;
    this.productDiscount = discount;
    this.rating = productRating;


  }

}

