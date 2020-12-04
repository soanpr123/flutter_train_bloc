// To parse this JSON data, do
//
//     final countrySearch = countrySearchFromJson(jsonString);

import 'dart:convert';

List<CountrySearch> countrySearchFromJson(String str) => List<CountrySearch>.from(json.decode(str).map((x) => CountrySearch.fromJson(x)));

String countrySearchToJson(List<CountrySearch> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CountrySearch {
  CountrySearch({
    this.name,
    this.topLevelDomain,
    this.alpha2Code,
    this.alpha3Code,
    this.callingCodes,
    this.capital,
    this.altSpellings,
    this.region,
    this.subregion,
    this.population,
    this.latlng,
    this.demonym,
    this.area,
    this.gini,
    this.timezones,
    this.borders,
    this.nativeName,
    this.numericCode,
    this.currencies,
    this.languages,
    this.translations,
    this.relevance,
  });

  String name;
  List<String> topLevelDomain;
  String alpha2Code;
  String alpha3Code;
  List<String> callingCodes;
  String capital;
  List<String> altSpellings;
  String region;
  String subregion;
  int population;
  List<double> latlng;
  String demonym;
  double area;
  double gini;
  List<String> timezones;
  List<String> borders;
  String nativeName;
  String numericCode;
  List<String> currencies;
  List<String> languages;
  Translations translations;
  String relevance;

  factory CountrySearch.fromJson(Map<String, dynamic> json) => CountrySearch(
    name: json["name"],
    topLevelDomain: List<String>.from(json["topLevelDomain"].map((x) => x)),
    alpha2Code: json["alpha2Code"],
    alpha3Code: json["alpha3Code"],
    callingCodes: List<String>.from(json["callingCodes"].map((x) => x)),
    capital: json["capital"],
    altSpellings: List<String>.from(json["altSpellings"].map((x) => x)),
    region: json["region"],
    subregion: json["subregion"],
    population: json["population"],
    latlng: List<double>.from(json["latlng"].map((x) => x.toDouble())),
    demonym: json["demonym"],
    area: json["area"] == null ? null : json["area"],
    gini: json["gini"] == null ? null : json["gini"].toDouble(),
    timezones: List<String>.from(json["timezones"].map((x) => x)),
    borders: List<String>.from(json["borders"].map((x) => x)),
    nativeName: json["nativeName"],
    numericCode: json["numericCode"],
    currencies: List<String>.from(json["currencies"].map((x) => x)),
    languages: List<String>.from(json["languages"].map((x) => x)),
    translations: Translations.fromJson(json["translations"]),
    relevance: json["relevance"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "topLevelDomain": List<dynamic>.from(topLevelDomain.map((x) => x)),
    "alpha2Code": alpha2Code,
    "alpha3Code": alpha3Code,
    "callingCodes": List<dynamic>.from(callingCodes.map((x) => x)),
    "capital": capital,
    "altSpellings": List<dynamic>.from(altSpellings.map((x) => x)),
    "region": region,
    "subregion": subregion,
    "population": population,
    "latlng": List<dynamic>.from(latlng.map((x) => x)),
    "demonym": demonym,
    "area": area == null ? null : area,
    "gini": gini == null ? null : gini,
    "timezones": List<dynamic>.from(timezones.map((x) => x)),
    "borders": List<dynamic>.from(borders.map((x) => x)),
    "nativeName": nativeName,
    "numericCode": numericCode,
    "currencies": List<dynamic>.from(currencies.map((x) => x)),
    "languages": List<dynamic>.from(languages.map((x) => x)),
    "translations": translations.toJson(),
    "relevance": relevance,
  };
}

class Translations {
  Translations({
    this.de,
    this.es,
    this.fr,
    this.ja,
    this.it,
  });

  String de;
  String es;
  String fr;
  String ja;
  String it;

  factory Translations.fromJson(Map<String, dynamic> json) => Translations(
    de: json["de"],
    es: json["es"],
    fr: json["fr"],
    ja: json["ja"],
    it: json["it"],
  );

  Map<String, dynamic> toJson() => {
    "de": de,
    "es": es,
    "fr": fr,
    "ja": ja,
    "it": it,
  };
}
