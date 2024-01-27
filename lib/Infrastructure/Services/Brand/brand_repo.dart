import 'package:dio/dio.dart';
import 'package:glam_garb_admin/Domain/response_models/brand_model/brand_add_model/brand_model.dart';
import 'package:glam_garb_admin/Domain/response_models/brand_model/brand_delete_model/brand_delete_model.dart';
import 'package:glam_garb_admin/Domain/response_models/brand_model/brand_edit_model/brand_edit_model.dart';
import 'package:glam_garb_admin/Domain/response_models/brand_model/brand_get_model/brand_get_model.dart';

class BrandRepo {
  Future<BrandModel> addBrand(
      String name, dynamic active, dynamic image) async {
    BrandModel brand = BrandModel(message: "");
    try {
      FormData formData = FormData.fromMap({
        "brandName": name,
        "active": active,
        "image": await MultipartFile.fromFile(
          image.path,
          filename: "image.jpg",
        ),
      });
      final response =
          await Dio().post("http://10.0.2.2:3000/admin/brands", data: formData);
      if (response.statusCode == 201 || response.statusCode == 200) {
        print("the response get is oky");
        print(response.data);
        return BrandModel.fromJson(response.data);
      } else {
        print("the response get is not oky");
        return brand;
      }
    } catch (e) {
      print("the response get some error $e");
      return brand;
    }
  }

  Future<BrandGetModel> getBrands() async {
    try {
      final dio = Dio(BaseOptions(
        headers: {
          'Cookie':
              'jwtAdmin=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY1OTZhNDg5YWQxM2Q1YWQ3MTllMjMyOSIsImlhdCI6MTcwNjMwNzQ4NiwiZXhwIjoxNzA2NTY2Njg2fQ.t91auOf3dCaj8O_NoQdsmmvhqp4BUBVD5GLd-PR6JKE',
          'Postman-Token': '<calculated when request is sent>',
          'Host': '<calculated when request is sent>',
          'User-Agent': 'PostmanRuntime/7.36.1',
          'Accept': '*/*',
          'Accept-Encoding': 'gzip, deflate, br',
          'Connection': 'keep-alive',
        },
      ));

      final response = await dio.get("http://10.0.2.2:3000/admin/brands");

      if (response.statusCode == 200) {
        print(response.data);
        return BrandGetModel.fromJson(response.data);
      } else {
        throw Exception("Failed to load brands");
      }
    } catch (error) {
      throw Exception("Error: $error");
    }
  }

  Future<BrandDeleteModel> deleteBrand(String brandId) async {
    BrandDeleteModel delBrand = BrandDeleteModel(message: "");
    try {
      final response = await Dio()
          .delete('http://10.0.2.2:3000/admin/brands/delete/$brandId');

      if (response.statusCode == 200) {
        print('brand deleted successfully');
      } else {
        print('Failed to delete brand. Status code: ${response.statusCode}');
      }
    } catch (error) {
      print('Error deleting brand: $error');
    }
    return delBrand;
  }

  Future<BrandEditModel> editBrand(String name, dynamic active, dynamic image,
      String id, String oldName) async {
    BrandEditModel brand = BrandEditModel(message: "");
    try {
      FormData formData = FormData.fromMap({
        "brandName": name,
        "active": active,
        "image": await MultipartFile.fromFile(
          image.path,
          filename: "image.jpg",
        ),
        "id": id,
        "oldName": oldName,
      });
      final response = await Dio()
          .put("http://10.0.2.2:3000/admin/brands/edit", data: formData);
      if (response.statusCode == 201 || response.statusCode == 200) {
        print("the response get is oky");
        print(response.data);
        return BrandEditModel.fromJson(response.data);
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
