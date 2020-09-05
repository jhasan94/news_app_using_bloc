import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_api/bloc/article_event.dart';
import 'package:news_api/bloc/article_state.dart';
import 'package:news_api/data/model/api_result_model.dart';
import 'package:news_api/data/repositories/repositories.dart';

class ArticleBloc extends Bloc<ArticleEvent, ArticleState> {
  ArticleRepository repository;
  ArticleBloc({@required this.repository, ArticleState initialState})
      : super(initialState);
  //ArticleBloc(ArticleState initialState) : super(initialState);

  @override
  Stream<ArticleState> mapEventToState(ArticleEvent event) async* {
    if (event is FetchArticlesEvents) {
      yield ArticleLoadingState();
      try {
        List<Articles> articles = await repository.getArticles();
        yield ArticleLoadedState(articles: articles);
      } catch (e) {
        yield ArticleErrorState(message: e.toString());
      }
    }
  }
}
