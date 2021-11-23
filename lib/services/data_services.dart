

import 'dart:convert';

import 'package:cubit/models/data_model.dart';
import 'package:http/http.dart' as http;

import '../utils.dart';

class DataServices{



  Future<List<DataModel>?> getInfo()async{
    var url = Uri.parse(baseUrl);
    var response=await http.get(url);
    try{
      List<dynamic> list=json.decode(response.body);
      print(list);
      return list.map((e) => DataModel.fromJson(e)).toList();
    }catch(error){
      print(error);
    }
  }

}