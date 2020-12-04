import 'dart:async';

import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_train_bloc/BLoC/Bloc.dart';
import 'package:flutter_train_bloc/Datalayer/countryModel.dart';
import 'package:flutter_train_bloc/Datalayer/api_client.dart';
import 'package:flutter_train_bloc/Datalayer/country_search_model.dart';
import 'package:rxdart/rxdart.dart';

class HomeBloc extends Bloc{
  CountrySearch _country;
  CountrySearch get selectedCountry=>_country;
  final _client=APIClient();
  final _listCountry=PublishSubject<List<Country>>();
  final _listSearch=PublishSubject<List<CountrySearch>>();
  final  _countrySelected=PublishSubject<CountrySearch>();


  Stream<List<Country>> get country=>_listCountry.stream;
  Stream<List<CountrySearch>> get search_country=>_listSearch.stream;
  Stream<CountrySearch> get selected_Country=>_countrySelected.stream;

void fetchCountry()async{
  final result=await _client.getCountry();

_listCountry.sink.add(result);
}

void submitQuery(String query)async{
  final result=await _client.searchCountry(query);
  _listSearch.sink.add(result);
}



  @override
  void build(BuildContext context) {
   print("build");
  }

  @override
  void dispose() {
    _listCountry.close();
    _listSearch.close();
  }

  @override
  void init() {
    // TODO: implement init
  }

}