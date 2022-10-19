import 'dart:convert';

class PersonaDatos{
  List<ModelDatos> items = [];

  PersonaDatos();

  PersonaDatos.fromJsonList(jsonList){
    if(jsonList == null)return;
    for(var item in jsonList["results"]){
      final data = ModelDatos.fromJsonMap(item);
      items.add(data);
    }
  }
}


class ModelDatos{

  //Declarar las variables
  late String firstname;
  late String lastname;
  late String city;
  late String country;
  late String email;
  late String phone;
  late String image;
  late String username;

  //Creo el constructor
  ModelDatos({
    required this.firstname,
    required this.lastname,
    required this.city,
    required this.country,
    required this.email,
    required this.phone,
    required this.image,
    required this.username
  });

  //Transformo el constructor
  ModelDatos.fromJsonMap(Map<String, dynamic> json){
    firstname = json["name"]["first"];
    lastname = json["name"]["last"];
    city = json["location"]["city"];
    country = json["location"]["country"];
    email = json["email"];
    phone = json["cell"];
    image = json["picture"]["large"];
    username = json["login"]["username"];
  }
}