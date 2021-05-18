import 'dart:async';
import 'package:dio/dio.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_news_app/src/domain/entities/article.dart';
import 'package:flutter_news_app/src/domain/usecaes/get_articles_usecase.dart';

part 'remote_articles_event.dart';
part 'remote_articles_state.dart';

class RemoteArticlesBloc
    extends Bloc<RemoteArticlesEvent, RemoteArticlesState> {
  GetArticlesUseCase _getArticlesUseCase;

  RemoteArticlesBloc() : super(const RemoteArticlesLoading());
  final List<Article> _artecles = [];
  int _page = 1;
  static const int _pageSize = 20;

  @override
  Stream<RemoteArticlesState> mapEventToState(
    RemoteArticlesEvent event,
  ) async* {
    if (event is GetArticles) yield* _getBrakingNewsArticle(event);
  }

  Stream<RemoteArticlesState> _getBrakingNewsArticle(
    RemoteArticlesEvent event,
  ) async* {
    yield* runBlocProcess(() async* {});
  }
}
