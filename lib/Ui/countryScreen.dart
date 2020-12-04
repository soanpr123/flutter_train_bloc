import 'package:flutter/material.dart';
import 'package:flutter_train_bloc/BLoC/bloc_provider.dart';
import 'package:flutter_train_bloc/BLoC/home_bloc.dart';
import 'package:flutter_train_bloc/Datalayer/countryModel.dart';
import 'package:flutter_train_bloc/Datalayer/country_search_model.dart';
import 'package:flutter_train_bloc/Ui/country_detail.dart';
import 'package:flutter_train_bloc/Ui/country_search_detail.dart';
import 'package:flutter_train_bloc/widget/item.dart';

class CountryScreen extends StatelessWidget {


  final TrackingScrollController _trackingScrollController =
      TrackingScrollController();

  @override
  Widget build(BuildContext context) {
    final bloc=BlocProvider.of<HomeBloc>(context);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        bloc.fetchCountry();
    });
    return CustomScrollView(
      controller: _trackingScrollController,
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.pink,
          title: Container(

            decoration: BoxDecoration(
                color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            height: 45,
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Colors.grey,width: 2.0)
                    ), hintText: 'Enter a Country'),
                onChanged: (query) {
               bloc.submitQuery(query);
                },
              ),
            ),
          ),
          floating: true,
          expandedHeight: 50,
        ),
       _buildResult(bloc)
      ],
    );
  }
  Widget _buildResult(HomeBloc bloc){
    return StreamBuilder<List<CountrySearch>>(

        stream: bloc.search_country ,
        builder: (context,snapshot){
          final results=snapshot.data;
          if(results==null){
            return  StreamBuilder<Object>(
                stream: bloc.country,
                builder: (context, snapshot) {
                  List<Country> country = [];
                  if (snapshot.hasData) {
                    country = snapshot.data;
                    return SliverList(
                        delegate: SliverChildBuilderDelegate((context, index) {
                          return GestureDetector(
                            onTap: (){
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) =>
                                      CountryDetail(countrySearch: country[index],translations: country[index].translations,),
                                ),
                              );
                            },
                            child: ItemCountry(
                              title: country[index].name,
                            ),
                          );
                        }, childCount: country.length));
                  }
                  return SliverToBoxAdapter(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    ),
                  );
                });
          } if(results.isEmpty){
            return  Center(child: Text('No Results'));
          }
          return _buildSearchResults(results,context);
        });
  }
  Widget _buildSearchResults(List<CountrySearch> results,BuildContext context) {
    // 2
    if(results.length==0){
      return SliverToBoxAdapter(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Center(
            child: CircularProgressIndicator(),
          ),
        ),
      );
    }
    return SliverList(
        delegate: SliverChildBuilderDelegate((context, index) {
          return GestureDetector(
            onTap: (){
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>
                      CountrySearchDetail(countrySearch: results[index],translations: results[index].translations,),
                ),
              );

            },
            child: ItemCountry(
              title: results[index].name,
            ),
          );
        }, childCount: results.length));
  }
}
