import 'package:dio/dio.dart';
import 'package:glam_garb_admin/Domain/response_models/brand_model/brand_add_model/brand_model.dart';
import 'package:glam_garb_admin/Domain/response_models/brand_model/brand_delete_model/brand_delete_model.dart';
import 'package:glam_garb_admin/Domain/response_models/brand_model/brand_edit_model/brand_edit_model.dart';
import 'package:glam_garb_admin/Domain/response_models/brand_model/brand_get_model/brand_get_model.dart';
import 'package:glam_garb_admin/Infrastructure/Services/Auth/Auth_repo.dart';

class BrandRepo {
  late AuthRepo repo;
  String? authToken;
  late String _jwt;
  late Dio dio;
  BrandRepo() {
    _jwt = "";
    repo = AuthRepo();
    initialize();
  }

  Future<void> initialize() async {
    authToken = await repo.getAuthToken();
    _jwt = "jwtAdmin=$authToken";

    dio = Dio(BaseOptions(headers: {'Cookie': _jwt}));
  }

  Future<BrandModel> addBrand(
      String name, dynamic active, dynamic image) async {
    if (_jwt.isEmpty) {
      await initialize();
    }

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
          await Dio().post("https://www.elegancestores.online/admin/brands", data: formData);
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
    if (_jwt.isEmpty) {
      await initialize();
    }

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

      final response = await dio.get("https://www.elegancestores.online/admin/brands");

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
          .delete('https://www.elegancestores.online/admin/brands/delete/$brandId');

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
          .put("https://www.elegancestores.online/admin/brands/edit", data: formData);
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
