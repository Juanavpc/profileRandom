import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:personarandom/Model/Model_persone.dart';

class DataProvider{
  final url = "https://randomuser.me/api/?results=5000";


  //Creo una función asincrona que va a esperar se resuelva la petición
  Future<List<ModelDatos>> getData() async{
    final resp = await http.get(Uri.parse(url));

    //Verifico el estado de la respuesta
    if(resp.statusCode == 200){
      String body = utf8.decode(resp.bodyBytes);
      final jsonData = jsonDecode(body);                      //se encarga de tomar el body en String y convertirlo a un json
      final persona = PersonaDatos.fromJsonList(jsonData);
      return persona.items;

    }else{
      throw Exception("Ocurrió algo  ${resp.statusCode}");
    }
  }
}