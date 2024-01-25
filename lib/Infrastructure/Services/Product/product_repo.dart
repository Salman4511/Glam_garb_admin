import 'package:dio/dio.dart';
import 'package:glam_garb_admin/Domain/body_models/product_model.dart';
import 'package:glam_garb_admin/Domain/response_models/product_model/product_add_model/product_model.dart';

class ProductRepo {
  Future<ProductModel> addProduct(ProductPassModel newProduct) async {
    ProductModel product = ProductModel(message: "");
    try {
      final response =
          await Dio().post("http://10.0.2.2:3000/admin/addproduct",
           data:<String,dynamic>{
            "image":newProduct.images,
            "prodname":newProduct.productName,
            "proddesc":newProduct.description,
            "prodcolor":newProduct.color,
            "sizes":newProduct.sizes,
            "prodbrand":newProduct.brand,
            "prodregprice":newProduct.regularPrice,
            "prodsprice":newProduct.salePrice,
            "gender":newProduct.gender,
            "prodcategory":newProduct.category
           }
           );
      if (response.statusCode == 201 || response.statusCode == 200) {
        print("the response get is oky");
        return ProductModel.fromJson(response.data);
      } else {
        print("the response get is not oky");
        return product;
      }
    } catch (e) {
      print("the response get some error $e");
      return product;
    }
  }
}
