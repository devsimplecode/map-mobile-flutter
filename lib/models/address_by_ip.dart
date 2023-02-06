import 'package:flutter/foundation.dart';

@immutable
class AddressByIp {
  final String? ip;
  final String? hostname;
  final String? region;
  final String? city;
  final String? country;
  final String? loc;
  final String? org;
  final String? timeZone;

  const AddressByIp({
    this.ip,
    this.hostname,
    this.region,
    this.city,
    this.country,
    this.loc,
    this.org,
    this.timeZone,
  });

  factory AddressByIp.fromJson(dynamic data) {
    return AddressByIp(
      ip: data['ip'],
      hostname: data['hostname'],
      region: data['region'],
      city: data['city'],
      country: data['country'],
      loc: data['loc'],
      org: data['org'],
      timeZone: data['timezone'],
    );
  }



  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AddressByIp &&
          runtimeType == other.runtimeType &&
          ip == other.ip &&
          hostname == other.hostname &&
          region == other.region &&
          city == other.city &&
          country == other.country &&
          loc == other.loc &&
          org == other.org &&
          timeZone == other.timeZone);

  @override
  int get hashCode =>
      ip.hashCode ^
      hostname.hashCode ^
      region.hashCode ^
      city.hashCode ^
      country.hashCode ^
      loc.hashCode ^
      org.hashCode ^
      timeZone.hashCode;


}
