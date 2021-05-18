import 'dart:io';

import 'package:dio/dio.dart';

import '../../core/params/article_request.dart';
import '../../core/resources/data_state.dart';
import '../../domain/entities/article.dart';
import '../../domain/repositories/articles_repository.dart';
import '../datasources/remote/news_api_service.dart';

class ArticlesRepositoryImpl implements ArticlesRepository {
  final NewsApiService _newsApiService;
  const ArticlesRepositoryImpl(this._newsApiService);
  @override
  Future<DataState<List<Article>>> getBrakingNewsArticles(
      ArticlesRequestParams params) async {
    try {
      final httpResponce = await _newsApiService.getBrakingNewsArticles(
        apiKey: params.apiKey,
        category: params.category,
        country: params.country,
        page: params.page,
        pageSize: params.pageSize,
      );
      if (httpResponce.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponce.data.articles);
      }
      return DataFailed(
        DioError(
          error: httpResponce.response.statusMessage,
          request: httpResponce.response.request,
          response: httpResponce.response,
          type: DioErrorType.RESPONSE,
        ),
      );
    } on DioError catch (e) {
      return DataFailed(e);
    }
  }
}
