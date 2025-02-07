import 'package:base_structure_bloc/core/base/service/base_service.dart';
import 'package:base_structure_bloc/features/messenger/sub_modules/list_of_chats/data/params/list_of_chats_params.dart';
import 'package:dio/dio.dart';

import '../../../../../../core/utils/faker/fake_api_response.dart';

/// [ListOfChatsService] : A service class responsible for making API requests to fetch a list of chats.
///
/// This class extends [BaseService] and implements the [request] method
/// to perform an API call using Dio, a popular HTTP client for Dart.
///
/// ### Methods:
///
/// - [request] :
///   - Simulates an API call using `FakeApiResponse` to fetch chat data.
///   - Parameters:
///     - [params] (optional) : An instance of [ListOfChatsParams] containing the request parameters.
///   - Returns: A `Future` that resolves to a `Response<dynamic>`, containing the chat list response.
///
/// ### Usage:
///
/// Use this class to perform API requests for retrieving chat data. It interacts with a mock API response
/// to simulate real network behavior.
///
/// #### Example Usage:
///
/// ```dart
/// final service = ListOfChatsService();
/// final response = await service.request(params: ListOfChatsParams());
/// print('Response: ${response.data}');
/// ```
///
class ListOfChatsService extends BaseService<ListOfChatsParams?, dynamic> {
  @override
  Future<Response<dynamic>> request(params) async {
    final response = await FakeApiResponse()
        .getFakeResponse(durationSec: 3, statusCode: 200, data: {
      "status": 200,
      "message": "succeed",
      "data": {
        "chats": [
          {
            "userNumber": 1,
            "userName": "iman",
            "userMessage": ["Hello", "How Are You"],
            "phone_number": "09121234554"
          },
          {
            "userNumber": 2,
            "userName": "reza",
            "userMessage": ["Hello", "How Are You"],
            "phone_number": "09121234554"
          },
          {
            "userNumber": 3,
            "userName": "reza",
            "userMessage": ["Hello", "How Are You"],
            "phone_number": "09121234554"
          },
          {
            "userNumber": 4,
            "userName": "reza",
            "userMessage": ["Hello", "How Are You"],
            "phone_number": "09121234554"
          },
          {
            "userNumber": 5,
            "userName": "reza",
            "userMessage": ["Hello", "How Are You"],
            "phone_number": "09121234554"
          },
          {
            "userNumber": 6,
            "userName": "reza",
            "userMessage": ["Hello", "How Are You"],
            "phone_number": "09121234554"
          },
          {
            "userNumber": 7,
            "userName": "reza",
            "userMessage": ["Hello", "How Are You"],
            "phone_number": "09121234554"
          }
        ]
      }
    });
    return response;
  }
}
