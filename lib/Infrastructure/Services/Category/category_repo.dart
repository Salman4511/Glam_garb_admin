import 'package:dio/dio.dart';
import 'package:glam_garb_admin/Domain/body_models/category_pass_model.dart';
import 'package:glam_garb_admin/Domain/response_models/category_model/category_add_model/category_model.dart';

class CategoryRepo{


Future<CategoryModel> addCategory(String name,dynamic active) async {
    CategoryModel category= CategoryModel(message: "");
    try {
      final response = await Dio().post("http://10.0.2.2:3000/admin/categories",
          data: <String,dynamic>{"categoryName": name, "active": active});
      if (response.statusCode == 201 || response.statusCode == 200) {
        print("the response get is oky");
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

  

}