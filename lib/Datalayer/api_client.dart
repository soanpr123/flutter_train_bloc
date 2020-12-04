import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_train_bloc/Datalayer/countryModel.dart';
import 'package:flutter_train_bloc/Datalayer/country_search_model.dart';
import 'package:http/http.dart'as http;
class APIClient{
  final _baseUrl="restcountries-v1.p.rapidapi.com";


  Future<List<Country>> getCountry()async{
    final result=await getRequest(path: "/all");

  final response= countryFromJson(result);
  return response;

  }

Future<List<CountrySearch>>searchCountry(String query)async{
    final result=await getRequest(path: "/name/$query");
    final response=countrySearchFromJson(result);
    return response;
}

   getRequest({@required String path,Map<String,String>parameters})async{
    final uri=Uri.https(_baseUrl, '/$path',parameters);
    final result=await http.get(uri,headers: _headersWithToken()).catchError((onError){
      print(onError);
      return null;
    });
    if(result!=null){
      switch(result.statusCode){
        case 200:
          // final jsonObject=jsonDecode(result.body) ;
          // print(jsonObject);
          return result.body;
          break;
        case 400:
          print("errors request");
          break;
      }
    }
  }

  Map<String, String> _headersWithToken() => {
    'x-rapidapi-key': 'b97dd9b0d0msh995369732731236p11b69ajsnb9e93e7904dc',
    'x-rapidapi-host': 'restcountries-v1.p.rapidapi.com',
    'useQueryString': "true",
  };
}