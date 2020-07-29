import 'package:conv_de_moedas/pages/home_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

const request = "https://api.hgbrasil.com/finance?format=json&key=60df7606";
  
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
Future<Map> chamadaApi() async{
    http.Response response = await http.get(request);
    return json.decode(response.body);
  }


class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Conversor de moedas",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: HomePageController(),
      
    );
  }
}
