import 'package:dio/dio.dart';
import 'package:glam_garb_admin/Domain/response_models/brand_model/brand_model.dart';

class BrandRepo{

Future<BrandModel> addBrand(String name, dynamic active , String imageurl) async {
    BrandModel brand = BrandModel(message: "");
    try {
      final response = await Dio().post("http://10.0.2.2:3000/admin/brands",
          data: <String, dynamic>{"brandName": name, "active": active,"image":imageurl});
      if (response.statusCode == 201 || response.statusCode == 200) {
        print("the response get is oky");
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

}