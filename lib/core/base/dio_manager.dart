import 'package:base_structure_bloc/core/base/custom_interceptor.dart';
import 'package:dio/dio.dart';

/// # [DioManager] Documentation
///
/// The [DioManager] class provides a wrapper for Dio, an HTTP client library in Dart. It simplifies the configuration and usage of Dio for making HTTP requests.
///
/// ## Class Overview
///
/// The [DioManager] class encapsulates a Dio instance and exposes methods for configuring its settings, such as base URL, connection timeout, and receive timeout.
///
/// ## Constructors
///
/// - `DioManager({bool? isCancelInterceptors = false})`: Initializes a new instance of the `DioManager` class with a default Dio instance. If `isCancelInterceptors` is set to `false` or `null`, it adds default interceptors (`CustomInterceptors` and `CurlLoggerDioInterceptor`) to the Dio instance.
///
/// ## Properties
///
/// - [dio] :
///   - Type: `Dio`
///   - Description: Returns the encapsulated Dio instance.
///
/// ## Methods Overview
///
/// ### [setBaseUrl] : `setBaseUrl(String baseUrl)`
/// Sets the base URL for the Dio instance.
///
/// - `baseUrl`: The base URL to set.
///
/// ### [setConnectTimeout] : `setConnectTimeout(int timeout)`
/// Sets the connection timeout for the Dio instance.
///
/// - `timeout`: The timeout duration in seconds.
///
/// ### [setReceiveTimeout] : `setReceiveTimeout(int timeout)`
/// Sets the receive timeout for the Dio instance.
///
/// - `timeout`: The timeout duration in seconds.
///
/// ## Usage
///
/// 1. Create an instance of [DioManager] :
///
///     ```dart
///     final dioManager = DioManager();
///     ```
///
///     Or, to initialize with default interceptors:
///
///     ```dart
///     final dioManager = DioManager(isCancelInterceptors: true);
///     ```
///
/// 2. Configure the Dio settings:
///
///     - Set the base URL:
///
///         ```dart
///         dioManager.setBaseUrl('https://api.example.com');
///         ```
///
///     - Set the connection timeout:
///
///         ```dart
///         dioManager.setConnectTimeout(10);
///         ```
///
///     - Set the receive timeout:
///
///         ```dart
///         dioManager.setReceiveTimeout(5);
///         ```
///
///     - (Add any other desired configuration methods)
///
/// 3. Access the Dio instance:
///
///     ```dart
///     final dio = dioManager.dio;
///     // Use dio to make HTTP requests
///     ```
///
/// ## Example
///
/// Here's an example that demonstrates the usage of `DioManager`:
///
/// ```dart
/// final dioManager = DioManager(isCancelInterceptors: false);
/// dioManager.setBaseUrl('https://api.example.com');
/// dioManager.setConnectTimeout(10);
/// dioManager.setReceiveTimeout(5);
///
/// final dio = dioManager.dio;
///
/// // Use dio to make HTTP requests
/// final response = await dio.get('/users');
/// debugPrint(response.data);
/// ```
///
class DioManager {
  final Dio _dio;

  DioManager({bool? isCancelInterceptors = false}) : _dio = Dio() {
    if (isCancelInterceptors! == false) {
      _dio.interceptors.add(CustomInterceptors());
    }
  }

  Dio get dio => _dio;

  void setBaseUrl(String baseUrl) => _dio.options.baseUrl = baseUrl;

  void setConnectTimeout(int timeout) =>
      _dio.options.connectTimeout = Duration(seconds: timeout);

  void setReceiveTimeout(int timeout) =>
      _dio.options.receiveTimeout = Duration(seconds: timeout);
}
