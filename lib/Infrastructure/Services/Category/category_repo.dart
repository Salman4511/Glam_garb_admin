import 'package:dio/dio.dart';
import 'package:glam_garb_admin/Domain/response_models/category_model/category_add_model/category_model.dart';
import 'package:glam_garb_admin/Domain/response_models/category_model/category_delete_model/category_delete_model.dart';
import 'package:glam_garb_admin/Domain/response_models/category_model/category_edit_model/category_edit_model.dart';
import 'package:glam_garb_admin/Domain/response_models/category_model/category_get_model/category_get_model.dart';

class CategoryRepo {
  Future<CategoryModel> addCategory(String name, dynamic active, int? categoryOffer,int? minAmount,int? maxDiscount,String? date) async {
    CategoryModel category = CategoryModel(message: "");
    try {
      final response = await Dio().post("http://10.0.2.2:3000/admin/categories",
          data: <String, dynamic>{
            "categoryName": name,
           "status": active,
           "category_offer":categoryOffer,
           "min_amount":minAmount,
           "max_discount":maxDiscount,
           "category_expiry":date});
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
    try {
       final dio = Dio(BaseOptions(
       headers: {
          'Cookie': 'jwtAdmin=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY1OTZhNDg5YWQxM2Q1YWQ3MTllMjMyOSIsImlhdCI6MTcwNTkyOTE0NSwiZXhwIjoxNzA2MTg4MzQ1fQ.YCjZBxDB4k8SGIobxpzHRw-jDCzxGunTViyIEE1ruUM',
          'Postman-Token': '<calculated when request is sent>',
          'Host': '<calculated when request is sent>',
          'User-Agent': 'PostmanRuntime/7.36.1',
          'Accept': '*/*',
          'Accept-Encoding': 'gzip, deflate, br',
          'Connection': 'keep-alive', 

        },
    ));
    
      final response = await dio.get("http://10.0.2.2:3000/admin/categories");
      
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
    CategoryDeleteModel delcategory =CategoryDeleteModel(message: "");
    try {
      final response = await Dio().delete('http://10.0.2.2:3000/admin/categories/delete/$categoryId');

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
  

  Future<CategoryEditModel> editCategory(String name, dynamic active,String id,
      int? categoryOffer,
      int? minAmount,
      int? maxDiscount,
      String? date) async {
    CategoryEditModel category = CategoryEditModel(message: "");
    try {
      final response = await Dio().put("http://10.0.2.2:3000/admin/categories/edit",
          data: <String, dynamic>{
            "categoryName": name,
            "status": active,
            "id":id,
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
