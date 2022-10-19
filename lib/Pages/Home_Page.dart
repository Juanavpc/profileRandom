import 'dart:html';

import 'package:flutter/material.dart';
import 'package:personarandom/Model/Model_persone.dart';
import 'package:personarandom/Provider/Provider_persone.dart';
import 'package:personarandom/Widget/Widger_info.dart';
import 'package:personarandom/Widget/Widget_swiper.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  //Creo un objeto Future que reciba los datos de la lista ModelDatos
  late Future<List<ModelDatos>> dataList;

  @override
  void initState() {
    super.initState();
    final getprovider = DataProvider();
    dataList = getprovider.getData(); 
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title, style: TextStyle(fontFamily: 'MontserratAlternates', fontSize: 25, fontWeight: FontWeight.bold),),
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25)),
        ),
        backgroundColor: Color.fromARGB(255, 174, 0, 255),
        
      ),
      body: SingleChildScrollView(
        child: FutureBuilder(
          future: dataList,
          builder: (context, snapshot){
            if(snapshot.hasData){
              return Column(
                children: [
                  information(data: snapshot.data as List<ModelDatos>),
                ]
              );
            }else{
              print(snapshot.error);
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
