import 'package:dio/dio.dart';
import 'package:glam_garb_admin/Domain/response_models/login_model/admin_login/admin_login.dart';
import 'package:glam_garb_admin/Domain/response_models/logout_model/admin_logout.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepo {
  static const String AUTH_ID_KEY = 'auth_id';

  String? _authId;

  Future<void> _saveAuthId(String authId) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(AUTH_ID_KEY, authId);
    _authId = authId;
  }

  Future<void> _loadAuthId() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _authId = prefs.getString(AUTH_ID_KEY);
  }

  Future<void> clearAuthId() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove(AUTH_ID_KEY);
  }

  Future<AdminLogin> singIn(String email, String password) async {
    AdminLogin logiAdmin = AdminLogin(email: "");
    try {
      final response = await Dio().post("http://10.0.2.2:3000/admin/login",
          data: <String, dynamic>{"email": email, "password": password});
      if (response.statusCode == 201 || response.statusCode == 200) {
        print("the response get is oky");
        logiAdmin = AdminLogin.fromJson(response.data);
        await _saveAuthId(logiAdmin.token!);
        return logiAdmin;
      } else {
        print("the response get is not oky");
        return logiAdmin;
      }
    } catch (e) {
      print("the response get some error $e");
      return logiAdmin;
    }
  }

  Future<bool> isAuthenticated() async {
    if (_authId == null) {
      // If authId is not loaded, load it from SharedPreferences
      await _loadAuthId();
    }
    return _authId != null;
  }

  Future<String?> getAuthToken() async {
    // If authId is not loaded, load it from SharedPreferences asynchronously
    if (_authId == null) {
      await _loadAuthId();
    }
    return _authId;
  }

  Future<LogoutModel> logOut() async {
    LogoutModel model = LogoutModel(message: "");
    try {
      final response = await Dio().post(
        "http://10.0.2.2:3000/logout",
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        print('User logouted');
        return LogoutModel.fromJson(response.data);
      }
    } catch (e) {
      print('error occured on logout --> $e');
    }
    return model;
  }
}
