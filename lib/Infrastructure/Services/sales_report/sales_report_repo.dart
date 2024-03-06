import 'package:dio/dio.dart';
import 'package:glam_garb_admin/Domain/response_models/sales_report_model/sales_report_model/sales_report_model.dart';
import 'package:glam_garb_admin/Infrastructure/Services/auth/Auth_repo.dart';

class SalesReportRepo {
  late AuthRepo repo;
  String? authToken;
  late String _jwt;
  late Dio dio;
  SalesReportRepo() {
    _jwt = "";
    repo = AuthRepo();
    initialize();
  }

  Future<void> initialize() async {
    authToken = await repo.getAuthToken();
    _jwt = "jwtAdmin=$authToken";

    dio = Dio(BaseOptions(headers: {'Cookie': _jwt}));
  }

  Future<SalesReportModel> salesReport() async {
    if (_jwt.isEmpty) {
      await initialize();
    }

    try {
      final response = await dio.get("https://www.elegancestores.online/admin/sales-report");

      if (response.statusCode == 200) {
        print(response.data);
        return SalesReportModel.fromJson(response.data);
      } else {
        throw Exception("Failed to load salesReport");
      }
    } catch (error) {
      throw Exception("Error: $error");
    }
  }

  Future<SalesReportModel> SortSalesReport(String date) async {
    if (_jwt.isEmpty) {
      await initialize();
    }

    try {
      final response = await dio.post("https://www.elegancestores.online/admin/sales-report",
          data: <String, dynamic>{"selectedDate": date});

      if (response.statusCode == 200) {
        print('response ok on sort salesreport');
        return SalesReportModel.fromJson(response.data);
      } else {
        throw Exception("Failed to sort salesReport");
      }
    } catch (error) {
      throw Exception("Error: $error");
    }
  }
}
