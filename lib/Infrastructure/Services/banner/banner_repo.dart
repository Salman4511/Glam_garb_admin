import 'package:dio/dio.dart';
import 'package:glam_garb_admin/Domain/response_models/banner_model/banner_add_model/banner_add_model.dart';
import 'package:glam_garb_admin/Domain/response_models/banner_model/banner_delete_model/banner_delete_model.dart';
import 'package:glam_garb_admin/Domain/response_models/banner_model/banner_edit_model/banner_edit_model.dart';
import 'package:glam_garb_admin/Domain/response_models/banner_model/banner_get_model/banner_get_model.dart';
import 'package:glam_garb_admin/Infrastructure/Services/Auth/Auth_repo.dart';

class BannerRepo {
  late AuthRepo repo;
  String? authToken;
  late String _jwt;
  late Dio dio;
  BannerRepo() {
    _jwt = "";
    repo = AuthRepo();
    initialize();
  }

  Future<void> initialize() async {
    authToken = await repo.getAuthToken();
    _jwt = "jwtAdmin=$authToken";

    dio = Dio(BaseOptions(headers: {'Cookie': _jwt}));
  }

  Future<BannerAddModel> addBanner(String description, String h1, String h2,
      String h3, String p1, String status, dynamic image) async {
    if (_jwt.isEmpty) {
      await initialize();
    }

    print('jwt------->$_jwt');
    BannerAddModel banner = BannerAddModel();
    try {
      FormData formData = FormData.fromMap({
        "description": description,
        "image": await MultipartFile.fromFile(
          image.path,
          filename: "image.jpg",
        ),
        "h1": h1,
        "h2": h2,
        "h3": h3,
        "p1": p1,
        "status": status,
      });

      final dio = Dio(BaseOptions(
        headers: {
          'Cookie': _jwt,
        },
        validateStatus: (status) {
          // Allow status code 302
          return status! >= 200 && status < 300 || status == 302;
        },
      ));

      final response = await dio.post(
        "http://10.0.2.2:3000/admin/banner",
        data: formData,
        options: Options(
          followRedirects: false, // Disable automatic redirection
        ),
      );
      print('statuscode------>${response.statusCode}');
      if (response.statusCode == 201 || response.statusCode == 200) {
        print("the response is OK on adding banner");
        return BannerAddModel.fromJson(response.data);
      } else {
        print("the response is not OK");
        return banner;
      }
    } catch (e) {
      print("error: $e");
      return banner;
    }
  }

  Future<BannerGetModel> getBanner() async {
    if (_jwt.isEmpty) {
      await initialize();
    }

    print('jwt------->$_jwt');
    try {
      // final dio = Dio(BaseOptions(
      //   headers: {
      //     'Cookie': _jwt,
      //   },
      // ));

      final response = await dio.get("http://10.0.2.2:3000/admin/banner");

      if (response.statusCode == 200) {
        print(response.data);
        return BannerGetModel.fromJson(response.data);
      } else {
        throw Exception("Failed to load brands");
      }
    } catch (error) {
      throw Exception("Error: $error");
    }
  }

  Future<BannerEditModel> editBanner(String id, String description, String h1,
      String h2, String h3, String p1, String status, dynamic image) async {
    if (_jwt.isEmpty) {
      await initialize();
    }

    BannerEditModel banner = BannerEditModel();
    try {
      FormData formData = FormData.fromMap({
        "id": id,
        "description": description,
        "image": await MultipartFile.fromFile(
          image.path,
          filename: "image.jpg",
        ),
        "h1": h1,
        "h2": h2,
        "h3": h3,
        "p1": p1,
        "status": status,
      });

      final dio = Dio(BaseOptions(
        headers: {
          'Cookie': _jwt,
        },
        validateStatus: (status) {
          // Allow status code 302
          return status! >= 200 && status < 300 || status == 302;
        },
      ));

      final response = await dio.put(
        "http://10.0.2.2:3000/admin/editBanner",
        data: formData,
        options: Options(
          followRedirects: false, // Disable automatic redirection
        ),
      );
      print('statuscode------>${response.statusCode}');
      if (response.statusCode == 201 || response.statusCode == 200) {
        print("the response is OK on editing banner");
        return BannerEditModel.fromJson(response.data);
      } else {
        print("the response is not OK");
        return banner;
      }
    } catch (e) {
      print("error: $e");
      return banner;
    }
  }

  Future<BannerDeleteModel> deleteBanner(String bannerId) async {
    if (_jwt.isEmpty) {
      await initialize();
    }

    BannerDeleteModel delBanner = BannerDeleteModel(message: "");
    try {
      // final dio = Dio(BaseOptions(headers: {'Cookie': _jwt}));
      final response = await dio
          .delete('http://10.0.2.2:3000/admin/deleteBanner?bannerId=$bannerId');

      if (response.statusCode == 200) {
        print('banner deleted successfully');
      } else {
        print('Failed to delete banner. Status code: ${response.statusCode}');
      }
    } catch (error) {
      print('Error deleting banner: $error');
    }
    return delBanner;
  }
}
