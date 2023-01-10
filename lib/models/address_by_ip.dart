class AddressByIp {
  final String? ip;
  final String? hostname;
  final String? region;
  final String? city;
  final String? country;
  final String? loc;
  final String? org;
  final String? timeZone;

  AddressByIp({
    this.ip,
    this.hostname,
    this.region,
    this.city,
    this.country,
    this.loc,
    this.org,
    this.timeZone,
  });

 factory AddressByIp.fromJson(dynamic data){
    return AddressByIp(
      ip: data['ip'],
      hostname: data['hostname'],
      region: data['region'],
      city: data['city'],
      country: data['country'],
      loc: data['loc'],
      org: data['org'],
      timeZone: data['timezone']
    );
  }

}
