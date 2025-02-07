import 'package:dio/dio.dart';

/// # [DioFactory] Documentation
///
/// The [DioFactory] abstract class is responsible for creating instances of Dio, which is a powerful HTTP client library in Dart. This abstract class defines a single method, `createDio()`, that subclasses must implement to provide a custom implementation of Dio.
///
/// ## Class Overview
///
/// - Abstract Class Name: [DioFactory]
/// - Description: Defines the contract for creating Dio instances.
///
/// ## Methods
///
/// ### [createDio] : `createDio()`
/// - Return Type: Dio
/// - Description: Creates and returns an instance of Dio.
///
/// ## Usage
///
/// To use the [DioFactory] , follow these steps:
///
/// 1. Create a concrete subclass of [DioFactory] and implement the [createDio] method.
/// 2. In the implementation of [createDio] method , customize the Dio instance according to your specific requirements.
/// 3. Use the concrete [DioFactory] subclass to create Dio instances in your code.
///
/// Example:
/// ```dart
/// class MyDioFactory extends DioFactory {
///   @override
///   Dio createDio() {
///     // Customize and configure the Dio instance
///     final dio = Dio();
///     dio.options.baseUrl = 'https://api.example.com';
///     dio.options.connectTimeout = 5000; // Set the connection timeout to 5 seconds
///     return dio;
///   }
/// }
///
/// // Usage example
/// final dioFactory = MyDioFactory();
/// final dio = dioFactory.createDio();
///
/// // Use the Dio instance for making HTTP requests
/// final response = await dio.get('/users');
/// ```
///
abstract class DioFactory {
  Dio createDio();
}
