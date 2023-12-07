import 'package:clean_architecture/core/resources/data_state.dart';

abstract class UseCase<T>{
  Future<DataState<T>> call();
}