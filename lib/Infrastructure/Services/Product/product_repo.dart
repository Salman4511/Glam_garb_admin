import 'package:dio/dio.dart';
import 'package:glam_garb_admin/Domain/body_models/product_model.dart';
import 'package:glam_garb_admin/Domain/response_models/product_model/product_model/product_model.dart';

class ProductRepo {
  Future<ProductModel> addBrand(ProductPassModel newProduct) async {
    ProductModel brand = ProductModel(message: "");
    try {
     
      final response =
          await Dio().post("http://10.0.2.2:3000/admin/addproduct", data:'');
      if (response.statusCode == 201 || response.statusCode == 200) {
        print("the response get is oky");
        return ProductModel.fromJson(response.data);
      } else {
        print("the response get is not oky");
        return brand;
      }
    } catch (e) {
      print("the response get some error $e");
      return brand;
    }
  }
}
