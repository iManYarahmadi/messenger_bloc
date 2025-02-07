import 'package:base_structure_bloc/core/base/data_sources/remote_data_source.dart';
import 'package:base_structure_bloc/core/repository_impl.dart';
import 'package:base_structure_bloc/data/models/error_response_model.dart';
import 'package:base_structure_bloc/features/messenger/sub_modules/list_of_chats/data/models/list_of_chats_model.dart';
import 'package:base_structure_bloc/features/messenger/sub_modules/list_of_chats/data/params/list_of_chats_params.dart';
import 'package:base_structure_bloc/features/messenger/sub_modules/list_of_chats/data/services/list_of_chats_service.dart';
import 'package:base_structure_bloc/features/messenger/sub_modules/list_of_chats/domain/repositories/list_of_chats_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

/// [ListOfChatsRepositoryImpl] : A concrete implementation of the [ListOfChatRepository] interface.
///
/// This class is responsible for making API requests to retrieve a list of chats
/// by utilizing the [ListOfChatsService]. It processes the API response, converts data into success or error models,
/// and handles various exceptions that may occur during execution.
///
/// ### Methods:
///
/// - [request] :
///   - Sends an API request to fetch the list of chats.
///   - Parameters:
///     - `params` (optional) : An instance of [ListOfChatsParams] containing request parameters.
///   - Returns: A `Future` resolving to an [Either] type, containing either a [RemoteDataState] with an [ErrorResponseModel]
///     on the left, or a [RemoteDataState] with a [ListOfChatsModel] on the right.
///
/// ### Error Handling:
///
/// - `DioException`: Handles exceptions related to Dio, the HTTP client.
/// - `TypeError`: Manages type errors that might occur during data processing.
/// - General exceptions: Catches all other unexpected errors and processes them accordingly.
///
/// ### Usage:
///
/// Use this class to handle API requests for fetching chat lists. It ensures proper processing of API responses
/// and converts exceptions into appropriate error models.
///
class ListOfChatsRepositoryImpl implements ListOfChatRepository {
  final ListOfChatsService _service;

  const ListOfChatsRepositoryImpl(this._service);

  @override
  Future<
      Either<RemoteDataState<ErrorResponseModel>,
          RemoteDataState<ListOfChatsModel>>> request(
      {ListOfChatsParams? params}) async {
    try {
      final response = await _service.request(params);

      if (response.statusCode.isSucceed() &&
          response.data is Map<String, dynamic> &&
          (response.data as Map<String, dynamic>).containsKey('status')) {
        if ((response.data['status'] as int?).isSucceed()) {
          final data =
          ListOfChatsModel.fromJson(response.data);
          final successResponse =
          RemoteDataSuccess<ListOfChatsModel>(remoteData: data);
          return Right(successResponse);
        } else {
          final errorResponse = ErrorResponseModel.fromJson(response.data);
          // await RepositoryImpl.internalExceptNotifySentry(response);
          final failureResponse =
          RemoteDataFailed<ErrorResponseModel>(remoteData: errorResponse);
          return Left(failureResponse);
        }
      }else {
          return RepositoryImpl.errorUnknownUtil();
        }
      } on DioException catch (e, s) {
      // await RepositoryImpl.dioExceptNotifySentry(e, s);
      return Left(
        RemoteDataFailed<ErrorResponseModel>(
          remoteData: RepositoryImpl.dioExceptionUtil(e, s),
        ),
      );
    } on TypeError catch (e, s) {
      // await RepositoryImpl.exceptNotifySentry(e, s);
      return Left(
        RemoteDataFailed<ErrorResponseModel>(
          remoteData: RepositoryImpl.typeErrorUtil(e, s),
        ),
      );
    } catch (e, s) {
      // await RepositoryImpl.exceptNotifySentry(e, s);
      return Left(
        RemoteDataFailed<ErrorResponseModel>(
          remoteData: RepositoryImpl.catchErrorUtil(e, s),
        ),
      );
    }
  }
}