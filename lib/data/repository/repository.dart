import 'package:fashon_bazar/data/models/login/post_login_resp.dart';
import 'package:fashon_bazar/data/models/me/get_me_resp.dart';
import 'package:fashon_bazar/data/models/register/post_register_resp.dart';

import '../apiClient/api_client.dart';

class Repository {
  var _apiClient = ApiClient();

  Future<GetMeResp> fetchMe({Map<String, String> headers = const {}}) async {
    return await _apiClient.fetchMe(
      headers: headers,
    );
  }

  Future<PostLoginResp> createLogin({
    Map<String, String> headers = const {},
    Map requestData = const {},
  }) async {
    return await _apiClient.createLogin(
      headers: headers,
      requestData: requestData,
    );
  }

  Future<PostRegisterResp> createRegister({
    Map<String, String> headers = const {},
    Map requestData = const {},
  }) async {
    return await _apiClient.createRegister(
      headers: headers,
      requestData: requestData,
    );
  }
}
