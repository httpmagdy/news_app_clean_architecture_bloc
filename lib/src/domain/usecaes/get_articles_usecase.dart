import '../../core/params/article_request.dart';
import '../../core/resources/data_state.dart';
import '../../core/usecases/usecase.dart';
import '../../domain/entities/article.dart';
import '../../domain/repositories/articles_repository.dart';

class GetArticlesUseCase
    implements UseCase<DataState<List<Article>>, ArticlesRequestParams> {
  ArticlesRepository _articlesRepository;

  @override
  Future<DataState<List<Article>>> call({ArticlesRequestParams params}) {
    return _articlesRepository.getBrakingNewsArticles(params);
  }
}
