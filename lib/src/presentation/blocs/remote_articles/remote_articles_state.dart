part of 'remote_articles_bloc.dart';

abstract class RemoteArticlesState extends Equatable {
  final List<ArticleModel> articles;
  final bool noMoreDate;
  final DioError error;
  const RemoteArticlesState({this.articles, this.noMoreDate, this.error});

  @override
  List<Object> get props => [articles, error, noMoreDate];
}

class RemoteArticlesLoading extends RemoteArticlesState {
  const RemoteArticlesLoading();
}

class RemoteArticlesDone extends RemoteArticlesState {
  const RemoteArticlesDone(List<ArticleModel> articles, {bool noMoreDate})
      : super(articles: articles, noMoreDate: noMoreDate);
}

class RemoteArticlesError extends RemoteArticlesState {
  const RemoteArticlesError(DioError error) : super(error: error);
}
