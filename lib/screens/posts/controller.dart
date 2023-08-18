import 'model.dart';
import 'package:flutter_mvc/network/requests.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_mvc/network/endpoints.dart' as endpoints;

final postsProvider = Provider((ref) => DataController().getData());

class DataController {
  Future<List<DataModel>?> getData() async {
    final data = await GetRequest().getJsonData(endpoints.postsEndpoint);

    if (data != null) return dataModelFromJson(data);
    return null;
  }
}
