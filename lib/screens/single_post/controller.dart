import 'model.dart';
import 'package:flutter_mvc/network/requests.dart';
import 'package:flutter_mvc/network/endpoints.dart' as endpoints;

class DataController {
  Future<DataModel?> getData() async {
    final data = await GetRequest().getJsonData(endpoints.onePost);

    if (data != null) return dataModelFromJson(data);
    return null;
  }
}
