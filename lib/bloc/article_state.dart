import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:news_api/data/model/api_result_model.dart';

abstract class ArticleState extends Equatable {}

class ArticleInitialState extends ArticleState {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class ArticleLoadingState extends ArticleState {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class ArticleLoadedState extends ArticleState {
  List<Articles> articles;
  ArticleLoadedState({@required this.articles});
  @override
  // TODO: implement props
  List<Object> get props => throw UnimplementedError();
}

class ArticleErrorState extends ArticleState {
  String message;
  ArticleErrorState({@required this.message});
  @override
  // TODO: implement props
  List<Object> get props => throw UnimplementedError();
}
