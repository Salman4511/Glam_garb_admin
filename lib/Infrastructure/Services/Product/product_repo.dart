import 'package:dio/dio.dart';
import 'dart:io';

import 'package:glam_garb_admin/Domain/response_models/product_model/product_add_model/product_model.dart';
import 'package:glam_garb_admin/Domain/response_models/product_model/product_delete_model/product_delete_model.dart';
import 'package:glam_garb_admin/Domain/response_models/product_model/product_edit_model/product_edit_model.dart';
import 'package:glam_garb_admin/Domain/response_models/product_model/product_get_model/product_get_model.dart';

class ProductRepoo {
  static const String _jwt =
      'jwtAdmin=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY1OTZhNDg5YWQxM2Q1YWQ3MTllMjMyOSIsImlhdCI6MTcwODA3Nzg4MSwiZXhwIjoxNzA4MzM3MDgxfQ.AXlFs0SHsUSRsGuexgDadamqwXsyXom0O9V54-q4jVQ';

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
        print("the response is OK on adding product");
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

  Future<ProductGetModel> getProducts() async {
    try {
      final dio = Dio(BaseOptions(
        headers: {
          'Cookie': _jwt,
          'Postman-Token': '<calculated when request is sent>',
          'Host': '<calculated when request is sent>',
          'User-Agent': 'PostmanRuntime/7.36.1',
          'Accept': '*/*',
          'Accept-Encoding': 'gzip, deflate, br',
          'Connection': 'keep-alive',
        },
      ));

      final response = await dio.get("http://10.0.2.2:3000/admin/products");

      if (response.statusCode == 200) {
        print(response.data);
        return ProductGetModel.fromJson(response.data);
      } else {
        throw Exception("Failed to load products");
      }
    } catch (error) {
      throw Exception("Error: $error");
    }
  }

  Future<ProductEditModel> editProduct(
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
      String id) async {
    ProductEditModel product = ProductEditModel(message: "");
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
        "id": id,
      });

      final response = await Dio().put(
        "http://10.0.2.2:3000/admin/products/edit",
        data: formData,
      );

      if (response.statusCode == 201 || response.statusCode == 200) {
        print("the response is OK");
        return ProductEditModel.fromJson(response.data);
      } else {
        print("the response is not OK");
        return product;
      }
    } catch (e) {
      print("error: $e");
      return product;
    }
  }

  Future<ProductDeleteModel> deleteProduct(String productId) async {
    ProductDeleteModel delProd = ProductDeleteModel(message: "");
    try {
      final response = await Dio()
          .post('http://10.0.2.2:3000/admin/products/delete/$productId');

      if (response.statusCode == 200) {
        print('Product deleted successfully');
      } else {
        print('Failed to delete product. Status code: ${response.statusCode}');
      }
    } catch (error) {
      print('Error deleting product: $error');
    }
    return delProd;
  }
}
