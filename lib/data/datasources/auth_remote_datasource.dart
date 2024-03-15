import 'package:dartz/dartz.dart';
import  'package:http/http.dart' as http;
import 'package:siakad_application/common/constants/variables.dart';
import 'package:siakad_application/data/models/request/auth_request_model.dart';
import 'package:siakad_application/data/models/response/auth_response_model.dart';

class AuthRemoteDatasource {
  Future<Either<String, AuthResponseModel>> login(
    AuthRequestModel requestModel) async {
    final headers = {
      'Accept': 'application/json',
    'Content-Type': 'application/json'
    };
    
    final response = await http.post(
    Uri.parse('${Variables.baseUrl}/api/login'), 
    headers: headers,
    body: requestModel.toJson(),
    );

    if(response.statusCode == 200) {
      return Right(AuthResponseModel.fromJson(response.body));
    } else {
      return const Left('server error');
    }
  }
}