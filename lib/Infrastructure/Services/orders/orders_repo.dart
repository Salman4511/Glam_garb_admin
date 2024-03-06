import 'package:dio/dio.dart';
import 'package:glam_garb_admin/Domain/response_models/orders_model/order_edit_model/order_edit_model.dart';
import 'package:glam_garb_admin/Domain/response_models/orders_model/orders_get_model/orders_get_model.dart';
import 'package:glam_garb_admin/Domain/response_models/orders_model/return_accept_reject_model/return_accept_reject_model.dart';
import 'package:glam_garb_admin/Infrastructure/Services/Auth/Auth_repo.dart';

class OrdersRepo {
  late AuthRepo repo;
  String? authToken;
  late String _jwt;
  late Dio dio;
  OrdersRepo() {
    _jwt = "";
    repo = AuthRepo();
    initialize();
  }

  Future<void> initialize() async {
    authToken = await repo.getAuthToken();
    _jwt = "jwtAdmin=$authToken";

    dio = Dio(BaseOptions(headers: {'Cookie': _jwt}));
  }

  Future<OrdersGetModel> getOrders() async {
    if (_jwt.isEmpty) {
      await initialize();
    }

    try {
      final response = await dio.get("https://www.elegancestores.online/admin/orders");

      if (response.statusCode == 200) {
        print(response.data);
        return OrdersGetModel.fromJson(response.data);
      } else {
        throw Exception("Failed to load orders");
      }
    } catch (error) {
      throw Exception("Error: $error");
    }
  }

  Future<OrderEditModel> editOrders(String id, String status) async {
    if (_jwt.isEmpty) {
      await initialize();
    }

    try {
      final response = await dio.post("https://www.elegancestores.online/admin/edit-order",
          data: <String, dynamic>{"id": id, "status": status});

      if (response.statusCode == 200) {
        print(response.data);
        print('edit order success');
        return OrderEditModel.fromJson(response.data);
      } else {
        throw Exception("Failed to edit orders");
      }
    } catch (error) {
      throw Exception("Error: $error");
    }
  }

  Future<ReturnAcceptRejectModel> returnAccept(
    String id,
  ) async {
    if (_jwt.isEmpty) {
      await initialize();
    }

    try {
      final response = await dio.get(
        "https://www.elegancestores.online/admin/acceptReturn?orderId=$id",
      );

      if (response.statusCode == 200) {
        print(response.data);
        print('return accept success');
        return ReturnAcceptRejectModel.fromJson(response.data);
      } else {
        throw Exception("Failed to accept return");
      }
    } catch (error) {
      throw Exception("Error: $error");
    }
  }

  Future<ReturnAcceptRejectModel> returnReject(
    String id,
  ) async {
    if (_jwt.isEmpty) {
      await initialize();
    }

    try {
      final response = await dio.get(
        "https://www.elegancestores.online/admin/rejectReturn?orderId=$id",
      );

      if (response.statusCode == 200) {
        print('return reject success');
        return ReturnAcceptRejectModel.fromJson(response.data);
      } else {
        throw Exception("Failed to reject return");
      }
    } catch (error) {
      throw Exception("Error: $error");
    }
  }
}
