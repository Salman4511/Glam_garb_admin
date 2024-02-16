import 'package:dio/dio.dart';
import 'package:glam_garb_admin/Domain/response_models/banner_model/banner_add_model/banner_add_model.dart';

class BannerRepo {

static const String _jwt =
      'jwtAdmin=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY1OTZhNDg5YWQxM2Q1YWQ3MTllMjMyOSIsImlhdCI6MTcwODA5NzM0NCwiZXhwIjoxNzA4MzU2NTQ0fQ.RZyFo5aczV-0PGGLga94iD0fq_CuomLtq8Rf9VibgSQ';

  Future<BannerAddModel> addBanner(String description, String h1,
      String h2, String h3, String p1, String status, dynamic image) async {
    BannerAddModel coupon = BannerAddModel();
    try {

       FormData formData = FormData.fromMap({
       "description": description,
        "h1": h1,
        "h2": h2,
        "h3": h3,
        "p1": p1,
        "status": status,
        "image": await MultipartFile.fromFile(
          image.path,
          filename: "image.jpg",
        ),
      });

      final dio = Dio(BaseOptions(headers: {
        'Cookie': _jwt,
        "Postman-Token":"<calculated when request is sent>",
        "Content-Type":"multipart/form-data; boundary=<calculated when request is sent>",
        "Content-Length":"<calculated when request is sent>",
        "Host":"<calculated when request is sent>",
        "User-Agent":"PostmanRuntime/7.36.3",
        "Accept":"*/*",
        "Accept-Encoding":"gzip, deflate, br",
        "Connection":"keep-alive"
      
      }));

      final response = await dio.post(
        "http://10.0.2.2:3000/admin/banner",
        data: formData
      );

      if (response.statusCode == 201 || response.statusCode == 200) {
        print("the response is OK on adding product");
        return BannerAddModel.fromJson(response.data);
      } else {
        print("the response is not OK");
        return coupon;
      }
    } catch (e) {
      print("error: $e");
      return coupon;
    }
  }


}
