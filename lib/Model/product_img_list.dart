class ProductImgListModel{
  String _productImg;
  String _productTitle;

  ProductImgListModel(this._productImg, this._productTitle);

  String get productTitle => _productTitle;

  set productTitle(String value) {
    _productTitle = value;
  }

  String get productImg => _productImg;

  set productImg(String value) {
    _productImg = value;
  }
}