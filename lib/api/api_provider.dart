// import 'dart:convert';
// import 'dart:io';

// import 'package:flutter/foundation.dart';
// import 'package:http/http.dart' as http;
// import 'package:tailor_project/api/api_exception.dart';
// import 'package:tailor_project/data/storage/storage_service.dart';

// class ApiProvider {
//   final _debiturUrl = Environment.baseUrl;
//   // Get methods
//   Future<dynamic> get(dynamic url, {Map<String, String>? headers}) async {
//     var responseJson;
//     try {
//       final response = await http.get(
//         Uri.parse(_debiturUrl + url),
//         headers: headers,
//       );
//       responseJson = returnResponse(response);
//     } on SocketException {
//       throw NetworkException('Tidak ada koneksi internet');
//     }
//     return responseJson;
//   }

//   // Get without methods
//   Future<dynamic> getWithoutBaseurl(dynamic url,
//       {Map<String, String>? headers}) async {
//     var responseJson;
//     try {
//       final response = await http.get(Uri.parse(url), headers: headers);

//       responseJson = returnResponse(response);
//     } on SocketException {
//       throw NetworkException();
//     }
//     return responseJson;
//   }

//   // Post methods
//   Future<dynamic> post(String url,
//       {dynamic body, Map<String, String>? headers}) async {
//     var responseJson;
//     try {
//       final response = await http.post(
//         Uri.parse(_debiturUrl + url),
//         body: body,
//         headers: headers,
//       );
//       responseJson = returnResponse(response);
//     } on SocketException {
//       throw NetworkException('Tidak ada koneksi internet');
//     }
//     return responseJson;
//   }

//   // Refresh Token methods
//   Future<bool> refreshToken() async {
//     try {
//       final refreshToken = await StorageService.getToken("refreshToken");
//       final body = jsonEncode({"refreshToken": refreshToken});
//       final response = await http
//           .post(Uri.parse("$_debiturUrl/refresh"), body: body, headers: {
//         HttpHeaders.contentTypeHeader: "application/json",
//         "api-key": Environment.apiKey,
//       });
//       debugPrint("response: ${response.body}");
//       final Map<String, dynamic> responseRefresh = json.decode(response.body);
//       if (responseRefresh['message'] == 'success') {
//         await StorageService.saveStorage(
//             'accessToken', responseRefresh['data']['accessToken']);
//         return true;
//       } else if (responseRefresh['message'] == 'error') {
//         throw RefreshTokenExpiredException(REFRESH_TOKEN_EXPIRED);
//       } else {
//         throw GeneralException("Failed to refresh the access token");
//       }
//     } catch (error) {
//       throw error;
//     }
//   }

//   // Put methods
//   Future<dynamic> put(String url,
//       {dynamic body, Map<String, String>? headers}) async {
//     var responseJson;
//     try {
//       final response = await http.put(
//         Uri.parse(_debiturUrl + url),
//         body: body,
//         headers: headers,
//       );
//       responseJson = returnResponse(response);
//     } on SocketException {
//       throw NetworkException('Tidak ada koneksi internet');
//     }
//     return responseJson;
//   }

//   // Delete methods
//   Future<dynamic> delete(String url, {Map<String, String>? headers}) async {
//     var responseJson;
//     try {
//       final response = await http.delete(
//         Uri.parse(_debiturUrl + url),
//         headers: headers,
//       );
//       responseJson = returnResponse(response);
//     } on SocketException {
//       throw NetworkException('Tidak ada koneksi internet');
//     }
//     return responseJson;
//   }

//   // Post Multipart methods
//   Future<dynamic> postMultipart(String url,
//       {required List<File> files,
//       Map<String, String>? headers,
//       required Map<String, dynamic> body,
//       required String pathFiles}) async {
//     var responseJson;
//     try {
//       var uri = Uri.parse(_debiturUrl + url);
//       var request = http.MultipartRequest('POST', uri)
//         ..headers.addAll(
//           headers!,
//         );

//       body.forEach((key, value) {
//         request.fields[key] = value.toString();
//       });

//       for (var file in files) {
//         request.files
//             .add(await http.MultipartFile.fromPath(pathFiles, file.path));
//       }

//       var streamedResponse = await request.send();
//       var response = await http.Response.fromStream(streamedResponse);

//       responseJson = returnResponse(response);
//     } on SocketException {
//       throw NetworkException('Tidak ada koneksi internet');
//     }
//     return responseJson;
//   }
// }
// // ----------------------------------------------------------------

// dynamic returnResponse(http.Response response) async {
//   if (kDebugMode) {
//     String responseJsonStr = response.body;
//     String endpointStr = response.request!.url.toString();
//     String endpointMethod = response.request!.method;

//     debugPrint('\x1B[31m\n→\x1B[0m');
//     debugPrint('\x1B[37m[$endpointMethod] → $endpointStr\x1B[0m');
//     debugPrint('\x1B[33m$responseJsonStr\x1B[0m');
//   }

//   switch (response.statusCode) {
//     case 200:
//       var responseJson = json.decode(response.body.toString());
//       return responseJson;
//     case 201:
//       var responseJson = json.decode(response.body.toString());
//       return responseJson;
//     case 400:
//       final Map<String, dynamic> jsonResponse = json.decode(response.body);
//       final message = jsonResponse["message"];
//       throw BadRequestException(message);
//     case 401:
//       final Map<String, dynamic> jsonResponse = json.decode(response.body);
//       final message = jsonResponse["message"];
//       debugPrint('errorMessage: $message');
//       if (message == "expired_token")
//         throw AccessTokenExpiredException(message);
//       else
//         throw message;
//     case 403:
//       throw UnauthorisedException(jsonDecode(response.body.toString()));
//     case 500:
//       throw 'Sorry, an error occurred.';
//     default:
//       throw FetchDataException(
//           'Error occured while Communication with Server with StatusCode : ${response.statusCode}');
//   }
// }
