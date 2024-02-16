import 'dart:ffi';

import 'package:dio/dio.dart';
import 'package:glam_garb_admin/Domain/response_models/coupon_model/coupon_add_model/coupon_add_model.dart';
import 'package:glam_garb_admin/Domain/response_models/coupon_model/coupon_del_model/coupon_del_model.dart';
import 'package:glam_garb_admin/Domain/response_models/coupon_model/coupon_edit_model/coupon_edit_model.dart';
import 'package:glam_garb_admin/Domain/response_models/coupon_model/coupon_get_model/coupon_get_model.dart';

class CouponRepo {
  static const String _jwt =
      'jwtAdmin=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY1OTZhNDg5YWQxM2Q1YWQ3MTllMjMyOSIsImlhdCI6MTcwODA3Nzg4MSwiZXhwIjoxNzA4MzM3MDgxfQ.AXlFs0SHsUSRsGuexgDadamqwXsyXom0O9V54-q4jVQ';

  Future<CouponAddModel> addCoupon(String couponCode, String couponDescr,
      int discount, int minAmount, int maxAmount, String expiry) async {
    CouponAddModel coupon = CouponAddModel(message: "");
    try {
      final dio = Dio(BaseOptions(headers: {'Cookie': _jwt}));

      final response = await dio.post(
        "http://10.0.2.2:3000/admin/coupons",
        data: <String, dynamic>{
          "couponcode": couponCode,
          "coupondescription": couponDescr,
          "discount": discount,
          "maximumAmount": maxAmount,
          "minimumAmount": minAmount,
          "couponexpiry": expiry,
        },
      );

      if (response.statusCode == 201 || response.statusCode == 200) {
        print("the response is OK on adding product");
        return CouponAddModel.fromJson(response.data);
      } else {
        print("the response is not OK");
        return coupon;
      }
    } catch (e) {
      print("error: $e");
      return coupon;
    }
  }

  Future<CouponGetModel> getCoupons() async {
    try {
      final dio = Dio(BaseOptions(
        headers: {
          'Cookie': _jwt,
        },
      ));

      final response = await dio.get("http://10.0.2.2:3000/admin/coupons");

      if (response.statusCode == 200) {
        print(response.data);
        return CouponGetModel.fromJson(response.data);
      } else {
        throw Exception("Failed to load categories");
      }
    } catch (error) {
      throw Exception("Error: $error");
    }
  }

  Future<CouponEditModel> editCoupon(
      String couponId,
      String couponCode,
      String couponDescr,
      int discount,
      int minAmount,
      int maxAmount,
      String expiry) async {
    CouponEditModel coupon = CouponEditModel();
    try {
      final dio = Dio(BaseOptions(headers: {'Cookie': _jwt}));

      final response = await dio.put(
        "http://10.0.2.2:3000/admin/coupons/edit",
        data: <String, dynamic>{
          "couponId": couponId,
          "couponcode": couponCode,
          "coupondescription": couponDescr,
          "discount": discount,
          "maximumAmount": maxAmount,
          "minimumAmount": minAmount,
          "couponexpiry": expiry,
        },
      );

      if (response.statusCode == 201 || response.statusCode == 200) {
        print("the response is OK on adding product");
        return CouponEditModel.fromJson(response.data);
      } else {
        print("the response is not OK");
        return coupon;
      }
    } catch (e) {
      print("error: $e");
      return coupon;
    }
  }

  Future<CouponDelModel> deleteCategory(String couponId) async {
    CouponDelModel delcoupon = CouponDelModel(message: "");
    try {
      final dio = Dio(BaseOptions(headers: {'Cookie': _jwt}));
      final response = await dio.delete(
          'http://10.0.2.2:3000/admin/coupons/delete?couponId=$couponId');

      if (response.statusCode == 200) {
        print('Category deleted successfully');
      } else {
        print('Failed to delete category. Status code: ${response.statusCode}');
      }
    } catch (error) {
      print('Error deleting category: $error');
    }
    return delcoupon;
  }
}
