import 'package:flutter_mvc/network/requests.dart';
import 'package:flutter_mvc/network/endpoints.dart' as endpoints;

class DataController {
  Future<String?> postData(dynamic body) async {
    final data = await PostRequest().sendJsonData(
      url: endpoints.postRequest,
      payload: body,
      resCode: 200,
    );

    if (data != null) return data;
    return null;
  }
}
