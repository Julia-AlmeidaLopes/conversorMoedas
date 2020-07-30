import 'package:conv_de_moedas/pages/home_page_view.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

const request = "https://api.hgbrasil.com/finance?format=json&key=60df7606";


class HomePageController extends StatelessWidget {
Future<Map> chamadaApi() async{
    http.Response response = await http.get(request);
    return json.decode(response.body);
  }

  double dolar;
  double euro;
  @override
  Widget build(BuildContext context) {
     return FutureBuilder<Map>(
        future: chamadaApi(),
        builder: (context, snapshot){
          switch(snapshot.connectionState){
            case ConnectionState.none:
            case ConnectionState.waiting:
              return Center(
                child: Text(
                  "Carregando dados",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                  ),
                ),
              );
            default: 
              if (snapshot.hasError){
                return Center(
                  child: Text(
                    "Erro ao carregar dados",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                  ),
                );
              }else{
                //dolar = snapshot.data["results"];//["currencies"]["USD"]["buy"];
                //euro = snapshot.data["results"]["currencies"]["EUR"]["buy"];
                return HomePageView();
              }
          }
        },
      );
      /*void real (String text){
        double real = double.parse(text);

      }*/
    
  }
}