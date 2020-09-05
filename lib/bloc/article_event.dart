import 'package:equatable/equatable.dart';

abstract class ArticleEvent extends Equatable {}

class FetchArticlesEvents extends ArticleEvent {
  @override
  // TODO: implement props
  List<Object> get props => throw UnimplementedError();
}
