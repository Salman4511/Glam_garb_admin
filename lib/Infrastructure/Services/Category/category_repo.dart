import 'package:dio/dio.dart';
import 'package:glam_garb_admin/Domain/response_models/category_model/category_add_model/category_model.dart';
import 'package:glam_garb_admin/Domain/response_models/category_model/category_delete_model/category_delete_model.dart';
import 'package:glam_garb_admin/Domain/response_models/category_model/category_edit_model/category_edit_model.dart';
import 'package:glam_garb_admin/Domain/response_models/category_model/category_get_model/category_get_model.dart';
import 'package:glam_garb_admin/Infrastructure/Services/Auth/Auth_repo.dart';

class CategoryRepo {
  late AuthRepo repo;
  String? authToken;
  late String _jwt;
  late Dio dio;
  CategoryRepo() {
    _jwt = "";
    repo = AuthRepo();
    initialize();
  }

  Future<void> initialize() async {
    authToken = await repo.getAuthToken();
    _jwt = "jwtAdmin=$authToken";

    dio = Dio(BaseOptions(headers: {'Cookie': _jwt}));
  }

  Future<CategoryModel> addCategory(
      String name,
      dynamic active,
      int? categoryOffer,
      int? minAmount,
      int? maxDiscount,
      String? date) async {
    if (_jwt.isEmpty) {
      await initialize();
    }

    CategoryModel category = CategoryModel(message: "");
    try {
      final response = await Dio().post("https://www.elegancestores.online/admin/categories",
          data: <String, dynamic>{
            "categoryName": name,
            "status": active,
            "category_offer": categoryOffer,
            "min_amount": minAmount,
            "max_discount": maxDiscount,
            "category_expiry": date
          });
      if (response.statusCode == 201 || response.statusCode == 200) {
        print("the response get is oky");
        print(response.data);
        return CategoryModel.fromJson(response.data);
      } else {
        print("the response get is not oky");
        return category;
      }
    } catch (e) {
      print("the response get some error $e");
      return category;
    }
  }

  Future<CategoryGetModel> getCategories() async {
    if (_jwt.isEmpty) {
      await initialize();
    }
    try {
      // final dio = Dio(BaseOptions(
      //   headers: {
      //     'Cookie': _jwt,
      //     'Postman-Token': '<calculated when request is sent>',
      //     'Host': '<calculated when request is sent>',
      //     'User-Agent': 'PostmanRuntime/7.36.1',
      //     'Accept': '*/*',
      //     'Accept-Encoding': 'gzip, deflate, br',
      //     'Connection': 'keep-alive',
      //   },
      // ));

      final response = await dio.get("https://www.elegancestores.online/admin/categories");

      if (response.statusCode == 200) {
        print(response.data);
        return CategoryGetModel.fromJson(response.data);
      } else {
        throw Exception("Failed to load categories");
      }
    } catch (error) {
      throw Exception("Error: $error");
    }
  }

  Future<CategoryDeleteModel> deleteCategory(String categoryId) async {
    CategoryDeleteModel delcategory = CategoryDeleteModel(message: "");
    try {
      final response = await Dio()
          .delete('https://www.elegancestores.online/admin/categories/delete/$categoryId');

      if (response.statusCode == 200) {
        print('Category deleted successfully');
      } else {
        print('Failed to delete category. Status code: ${response.statusCode}');
      }
    } catch (error) {
      print('Error deleting category: $error');
    }
    return delcategory;
  }

  Future<CategoryEditModel> editCategory(
      String name,
      dynamic active,
      String id,
      int? categoryOffer,
      int? minAmount,
      int? maxDiscount,
      String? date) async {
    CategoryEditModel category = CategoryEditModel(message: "");
    try {
      final response = await Dio().put(
          "https://www.elegancestores.online/admin/categories/edit",
          data: <String, dynamic>{
            "categoryName": name,
            "status": active,
            "id": id,
            "category_offer": categoryOffer,
            "min_amount": minAmount,
            "max_discount": maxDiscount,
            "category_expiry": date
          });

      if (response.statusCode == 201 || response.statusCode == 200) {
        print("the response get is oky");
        print(response.data);
        return CategoryEditModel.fromJson(response.data);
      } else {
        print("the response get is not oky");

        return category;
      }
    } catch (e) {
      print("the response get some error $e");
      return category;
    }
  }
}
