import 'package:base_structure_bloc/core/base/data_sources/remote_data_source.dart';
import 'package:base_structure_bloc/data/models/error_response_model.dart';
import 'package:base_structure_bloc/features/messenger/sub_modules/list_of_chats/data/models/list_of_chats_model.dart';
import 'package:base_structure_bloc/features/messenger/sub_modules/list_of_chats/data/params/list_of_chats_params.dart';
import 'package:dartz/dartz.dart';

/// [ListOfChatRepository] : An abstract class defining a repository for retrieving a list of chats
/// from the UniFood API.
///
/// This class provides methods to interact with remote data sources and retrieve chat-related data.
/// The methods return a [RemoteDataState], encapsulating either success or error responses.
///
/// ### Methods:
///
/// - [request] : Fetches a list of chats, optionally accepting [ListOfChatsParams].
///   Returns an [Either] type containing a [RemoteDataState] with either an [ErrorResponseModel]
///   or a [ListOfChatsModel].
///
/// ### Usage:
///
/// Implement this abstract class to handle API communication for fetching chat lists.
/// Extend it to define how remote data sources interact with the API and process responses.
///
///
abstract class ListOfChatRepository {
  Future<
      Either<RemoteDataState<ErrorResponseModel>,
          RemoteDataState<ListOfChatsModel>>> request(
      {ListOfChatsParams? params});
}
