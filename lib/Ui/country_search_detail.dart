import 'package:flutter/material.dart';
import 'package:flutter_train_bloc/Datalayer/country_search_model.dart';
import 'package:flutter_train_bloc/utils/contain.dart';

class CountrySearchDetail extends StatelessWidget {
  final CountrySearch countrySearch;
  final Translations translations;
  CountrySearchDetail({this.countrySearch,this.translations});
  @override
  Widget build(BuildContext context) {
    String topLeveldomain = "";
    String callingcodes = "";
    var altspellings = StringBuffer();
    countrySearch.topLevelDomain.forEach((element) {
      topLeveldomain = element;
    });
    countrySearch.callingCodes.forEach((element) {
      callingcodes = element;
    });
    countrySearch.altSpellings.forEach((element) {
      altspellings.write(element);
    });
    print(topLeveldomain);
    return Scaffold(
        appBar: AppBar(
          title: Text(countrySearch.name),
        ),
        body:  Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              margin: EdgeInsets.only(right: 19.0, left: 19.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        TextTitle(
                          title: "Name :",
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        TextDesCription(
                          description: countrySearch.name,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        TextTitle(
                          title: "topLevelDomain :",
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        TextDesCription(
                          description: topLeveldomain,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        TextTitle(
                          title: "alpha2Code :",
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        TextDesCription(
                          description: countrySearch.alpha2Code,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        TextTitle(
                          title: "alpha3Code :",
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        TextDesCription(
                          description: countrySearch.alpha3Code,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        TextTitle(
                          title: "callingCodes :",
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        TextDesCription(
                          description: callingcodes,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        TextTitle(
                          title: "capital :",
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        TextDesCription(
                          description: countrySearch.capital,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Row(
                        children: [
                          TextTitle(
                            title: "altSpellings :",
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: ListView.separated(
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return TextDesCription(
                                  description: countrySearch.altSpellings[index],
                                );
                              },
                              itemCount: countrySearch.altSpellings.length,
                              separatorBuilder: (BuildContext context, int index) {
                                return Divider(color: Colors.grey,);
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        TextTitle(
                          title: "region :",
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        TextDesCription(
                          description: countrySearch.region,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        TextTitle(
                          title: "subregion :",
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        TextDesCription(
                          description: countrySearch.subregion,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        TextTitle(
                          title: "population :",
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        TextDesCription(
                          description: countrySearch.population.toString(),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Row(
                        children: [
                          Container(
                            height: 90,
                            child: Column(
                              children: [
                                TextTitle(
                                  title: "latlng :",
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: ListView.separated(
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return TextDesCription(
                                  description: countrySearch.latlng[index].toString(),
                                );
                              },
                              itemCount: countrySearch.latlng.length,
                              separatorBuilder: (BuildContext context, int index) {
                                return Divider(color: Colors.grey,);
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        TextTitle(
                          title: "demonym :",
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        TextDesCription(
                          description: countrySearch.demonym.toString(),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        TextTitle(
                          title: "area :",
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        TextDesCription(
                          description: countrySearch.area.toString(),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        TextTitle(
                          title: "gini :",
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        TextDesCription(
                          description: countrySearch.gini.toString(),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Row(
                        children: [
                          Container(
                            height: 60,
                            child: Column(
                              children: [
                                TextTitle(
                                  title: "timezones :",
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: ListView.separated(
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return TextDesCription(
                                  description: countrySearch.timezones[index].toString(),
                                );
                              },
                              itemCount: countrySearch.timezones.length,
                              separatorBuilder: (BuildContext context, int index) {
                                return Divider(color: Colors.grey,);
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Row(
                        children: [
                          Container(
                            height: 120,
                            child: Column(
                              children: [
                                TextTitle(
                                  title: "borders :",
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: ListView.separated(
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return TextDesCription(
                                  description: countrySearch.borders[index].toString(),
                                );
                              },
                              itemCount: countrySearch.borders.length,
                              separatorBuilder: (BuildContext context, int index) {
                                return Divider(color: Colors.grey,);
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        TextTitle(
                          title: "nativeName :",
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        TextDesCription(
                          description: countrySearch.nativeName.toString(),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        TextTitle(
                          title: "numericCode :",
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        TextDesCription(
                          description: countrySearch.numericCode.toString(),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Row(
                        children: [
                          TextTitle(
                            title: "currencies :",
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: ListView.separated(
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return TextDesCription(
                                  description: countrySearch.currencies[index].toString(),
                                );
                              },
                              itemCount: countrySearch.currencies.length,
                              separatorBuilder: (BuildContext context, int index) {
                                return Divider(color: Colors.grey,);
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Row(
                        children: [
                          TextTitle(
                            title: "languages :",
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: ListView.separated(
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return TextDesCription(
                                  description: countrySearch.languages[index].toString(),
                                );
                              },
                              itemCount: countrySearch.languages.length,
                              separatorBuilder: (BuildContext context, int index) {
                                return Divider(color: Colors.grey,);
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 140,
                          child: Column(
                            children: [
                              TextTitle(
                                title: "translations :",
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                TextTitle(title: 'de :',),
                                SizedBox(width: 5,),
                                TextDesCription(
                                  description: translations.de,
                                ),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                TextTitle(title: 'es :',),
                                SizedBox(width: 5,),
                                TextDesCription(
                                  description: translations.de,
                                ),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                TextTitle(title: 'fr :',),
                                SizedBox(width: 5,),
                                TextDesCription(
                                  description: translations.de,
                                ),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                TextTitle(title: 'ja :',),
                                SizedBox(width: 5,),
                                TextDesCription(
                                  description: translations.de,
                                ),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                TextTitle(title: 'it :',),
                                SizedBox(width: 5,),
                                TextDesCription(
                                  description: translations.de,
                                ),
                              ],
                            ),
                            SizedBox(height: 10,),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        TextTitle(
                          title: "relevance :",
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        TextDesCription(
                          description: countrySearch.relevance.toString(),
                        )
                      ],
                    ),
                  SizedBox(height: 20,)
                  ],
                ),
              )),
        );
  }
}
