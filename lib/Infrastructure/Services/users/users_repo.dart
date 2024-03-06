import 'package:dio/dio.dart';
import 'package:glam_garb_admin/Domain/response_models/users_model/user_block_model/user_block_model.dart';
import 'package:glam_garb_admin/Domain/response_models/users_model/user_get_model/user_get_model.dart';
import 'package:glam_garb_admin/Infrastructure/Services/Auth/Auth_repo.dart';

class UserRepo {
  late AuthRepo repo;
  String? authToken;
  late String _jwt;
  late Dio dio;
  UserRepo() {
    _jwt = "";
    repo = AuthRepo();
    initialize();
  }

  Future<void> initialize() async {
    authToken = await repo.getAuthToken();
    _jwt = "jwtAdmin=$authToken";

    dio = Dio(BaseOptions(headers: {'Cookie': _jwt}));
  }

  Future<UserGetModel> getUser() async {
    if (_jwt.isEmpty) {
      await initialize();
    }

    try {
      // final dio = Dio(BaseOptions(
      //   headers: {
      //     'Cookie': _jwt,
      //   },
      // ));

      final response =
          await dio.get("https://www.elegancestores.online/admin/user_management");

      if (response.statusCode == 200) {
        print(response.data);
        return UserGetModel.fromJson(response.data);
      } else {
        throw Exception("Failed to load brands");
      }
    } catch (error) {
      throw Exception("Error: $error");
    }
  }

  Future<UserBlockModel> blockUser(String id) async {
    if (_jwt.isEmpty) {
      await initialize();
    }

    try {
      // final dio = Dio(BaseOptions(
      //   headers: {
      //     'Cookie': _jwt,
      //   },
      // ));

      final response = await dio.post("https://www.elegancestores.online/admin/block/$id");
      print(response);
      if (response.statusCode == 200) {
        print(response.data);
        return UserBlockModel.fromJson(response.data);
      } else {
        throw Exception("Failed to get response");
      }
    } catch (error) {
      throw Exception("Error: $error");
    }
  }
}
