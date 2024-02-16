part of 'product_bloc.dart';

@freezed
class ProductEvent with _$ProductEvent {
  const factory ProductEvent() = _ProductEvent;

  factory ProductEvent.addProduct(
    List<File?> images,
    String prodname,
    String proddesc,
    String prodcolor,
    List<dynamic> sizes,
    List<dynamic> stocks,
    String prodbrand,
    String prodcategory,
    double prodregprice,
    double prodsprice,
    String gender,
  ) = _AddProduct;

  factory ProductEvent.editProduct(
      List<File?> images,
      String prodname,
      String proddesc,
      String prodcolor,
      List<dynamic> sizes,
      List<dynamic> stocks,
      String prodbrand,
      String prodcategory,
      double prodregprice,
      double prodsprice,
      String gender,
      String id) = _EditProduct;

  factory ProductEvent.deleteProduct(String id) = _DeleteProduct;
}
