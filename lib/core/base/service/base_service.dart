import 'package:dio/dio.dart';

abstract class BaseService<TReq, TRes> {
  Future<Response<TRes>> request(TReq? params);
}
