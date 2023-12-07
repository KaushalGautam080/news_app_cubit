import 'package:clean_architecture/core/resources/data_state.dart';

Future<DataState<T>> tryCatch<T>({required Future Function() callBack,
String errorMsg ="Error Occurred",
ErrorType errorType = ErrorType.unknown,
}) async{
  try{
     return await callBack();
  }
  catch(e){
    return DataFailed(error: e.toString(), errorMsg: errorMsg);
  }
  }