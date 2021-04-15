part of 'package:dart_mock/src/mock_base.dart';

/// return a random protocol.
String protocol() {
  return pick(protocols);
}

/// return a random tld.
String tld() {
  return pick(tlds);
}

/// return a random domain.
///
/// you can specify a [tld].
String domain({String? tld}) {
  return '${word()}.${tld ?? pick(tlds)}';
}

/// return a random domain.
///
/// you can specify [protocol] and [host].
String url({String? protocol, String? host}) {
  return '${protocol ?? pick(protocols)}://${host ?? domain()}/${word()}';
}

/// return a random email, example: esvhm@rkej.pg.
///
/// you can specify a [host].
String email({String? host}) {
  return '${word()}@${host ?? domain()}';
}

/// return a random ip.
String ip() {
  return '${integer(max: 255)}.${integer(max: 255)}.${integer(max: 255)}.${integer(max: 255)}';
}
