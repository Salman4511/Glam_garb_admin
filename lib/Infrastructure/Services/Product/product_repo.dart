import 'package:dio/dio.dart';
import 'dart:io';

import 'package:glam_garb_admin/Domain/response_models/product_model/product_add_model/product_model.dart';

class ProductRepo {
  Future<ProductModel> addProduct(
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
  ) async {
    ProductModel product = ProductModel(message: "");
    try {
      List<MultipartFile?> imageFiles = images.map((image) {
        if (image != null) {
          return MultipartFile.fromFileSync(image.path,
              filename: image.path.split('/').last);
        } else {
          return null;
        }
      }).toList();

      FormData formData = FormData.fromMap({
        "images": imageFiles,
        "prodname": prodname,
        "proddesc": proddesc,
        "prodcolor": prodcolor,
        "sizes": sizes,
        "stocks": stocks,
        "prodbrand": prodbrand,
        "prodregprice": prodregprice,
        "prodsprice": prodsprice,
        "gender": gender,
        "prodcategory": prodcategory,
      });

      final response = await Dio().post(
        "http://10.0.2.2:3000/admin/addproduct",
        data: formData,
      );

      if (response.statusCode == 201 || response.statusCode == 200) {
        print("the response is OK");
        return ProductModel.fromJson(response.data);
      } else {
        print("the response is not OK");
        return product;
      }
    } catch (e) {
      print("error: $e");
      return product;
    }
  }
}
