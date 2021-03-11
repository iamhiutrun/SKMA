// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../restClient.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _RestClient implements RestClient {
  _RestClient(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    baseUrl ??= 'https://schedulekma.herokuapp.com/';
  }

  final Dio _dio;

  String baseUrl;

  @override
  Future<Model> logIn(String username, String password, String passwordhash) {
    // TODO: implement logIn
    throw UnimplementedError();
  }
}
