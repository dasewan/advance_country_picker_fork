class Country {
  String alpha2;
  String alpha3;
  String continent;
  String countryCode;
  String currencyCode;
  String? gec;
  Geo geo;
  String internationalPrefix;
  String? ioc;
  String isoLongName;
  String isoShortName;
  String name;
  String flag;
  String dialCode;
  List<String> languagesOfficial;
  List<String> languagesSpoken;
  List<int> nationalDestinationCodeLengths;
  List<int> nationalNumberLengths;
  String nationalPrefix;
  String nationality;
  String number;
  bool postalCode;
  String? postalCodeFormat;
  String region;
  List<String> unofficialNames;
  String? addressFormat;
  String? altCurrency;
  Map<String, String> isoShortNameByLocale;

  Country({
    required this.alpha2,
    required this.alpha3,
    required this.continent,
    required this.countryCode,
    required this.currencyCode,
    required this.gec,
    required this.geo,
    required this.internationalPrefix,
    required this.ioc,
    required this.isoLongName,
    required this.isoShortName,
    required this.name,
    required this.flag,
    required this.dialCode,
    required this.languagesOfficial,
    required this.languagesSpoken,
    required this.nationalDestinationCodeLengths,
    required this.nationalNumberLengths,
    required this.nationalPrefix,
    required this.nationality,
    required this.number,
    required this.postalCode,
    required this.postalCodeFormat,
    required this.region,
    required this.unofficialNames,
    this.addressFormat,
    this.altCurrency,
    required this.isoShortNameByLocale,
  });

  factory Country.fromJson(Map<String, dynamic> json) {
    return Country(
      alpha2: json['alpha2'],
      alpha3: json['alpha3'],
      continent: json['continent'],
      countryCode: json['countryCode'],
      currencyCode: json['currencyCode'],
      gec: json['gec'],
      geo: Geo.fromJson(json['geo']),
      internationalPrefix: json['internationalPrefix'],
      ioc: json['ioc'],
      isoLongName: json['isoLongName'],
      isoShortName: json['isoShortName'],
      name: json['name'],
      flag: json['flag'],
      dialCode: json['dialCode'],
      languagesOfficial: List<String>.from(json['languagesOfficial']),
      languagesSpoken: List<String>.from(json['languagesSpoken']),
      nationalDestinationCodeLengths:
          List<int>.from(json['nationalDestinationCodeLengths']),
      nationalNumberLengths: List<int>.from(json['nationalNumberLengths']),
      nationalPrefix: json['nationalPrefix'],
      nationality: json['nationality'],
      number: json['number'],
      postalCode: json['postalCode'],
      postalCodeFormat: json['postalCodeFormat'],
      region: json['region'],
      unofficialNames: List<String>.from(json['unofficialNames']),
      addressFormat: json['addressFormat'],
      altCurrency: json['altCurrency'],
      isoShortNameByLocale:
          Map<String, String>.from(json['isoShortNameByLocale']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'alpha2': alpha2,
      'alpha3': alpha3,
      'continent': continent,
      'countryCode': countryCode,
      'currencyCode': currencyCode,
      'gec': gec,
      'geo': geo.toJson(),
      'internationalPrefix': internationalPrefix,
      'ioc': ioc,
      'isoLongName': isoLongName,
      'isoShortName': isoShortName,
      'name': name,
      'flag': flag,
      'dialCode': dialCode,
      'languagesOfficial': languagesOfficial,
      'languagesSpoken': languagesSpoken,
      'nationalDestinationCodeLengths': nationalDestinationCodeLengths,
      'nationalNumberLengths': nationalNumberLengths,
      'nationalPrefix': nationalPrefix,
      'nationality': nationality,
      'number': number,
      'postalCode': postalCode,
      'postalCodeFormat': postalCodeFormat,
      'region': region,
      'unofficialNames': unofficialNames,
      'addressFormat': addressFormat,
      'altCurrency': altCurrency,
      'isoShortNameByLocale': isoShortNameByLocale,
    };
  }
}

class Geo {
  Coordinate coordinate;
  Coordinate maxCoordinate;
  Coordinate minCoordinate;

  Geo({
    required this.coordinate,
    required this.maxCoordinate,
    required this.minCoordinate,
  });

  factory Geo.fromJson(Map<String, dynamic> json) {
    return Geo(
      coordinate: Coordinate.fromJson(json['coordinate']),
      maxCoordinate: Coordinate.fromJson(json['maxCoordinate']),
      minCoordinate: Coordinate.fromJson(json['minCoordinate']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'coordinate': coordinate.toJson(),
      'maxCoordinate': maxCoordinate.toJson(),
      'minCoordinate': minCoordinate.toJson(),
    };
  }
}

class Coordinate {
  double latitude;
  double longitude;

  Coordinate({
    required this.latitude,
    required this.longitude,
  });

  factory Coordinate.fromJson(Map<String, dynamic> json) {
    return Coordinate(
      latitude: json['latitude'],
      longitude: json['longitude'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'latitude': latitude,
      'longitude': longitude,
    };
  }
}
