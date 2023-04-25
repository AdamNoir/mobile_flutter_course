import 'dart:async';

import 'package:dio/dio.dart';
import 'package:yes_no_app/domain/entities/message.dart';
import 'package:yes_no_app/infrastructure/models/yes_no_model.dart';

class GetYesNoAnswer{
  final _dio = Dio();

  Future<Message> getAnswer() async {
    //*Consumimos la ruta HTTP
    final response = await _dio.get('https://yesno.wtf/api');
    
    //*Creamos nuestro modelo YesNoModel con lo que retorna
    final yesNoModel = YesNoModel.fromJson(response.data);

    //*Lo convertimos en una instancia de Message y la devolvemo 
    return yesNoModel.toMessageEntity();
  //throw UnimplementedError();
  }
}