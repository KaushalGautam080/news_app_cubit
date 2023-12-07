import 'package:clean_architecture/core/resources/data_state.dart';

abstract class UCP<T,P>{
  Future<DataState<T>> call(P param);
}