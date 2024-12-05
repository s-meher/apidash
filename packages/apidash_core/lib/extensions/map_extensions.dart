import 'dart:io';

extension MapExtension on Map {
  bool hasKeyContentType() {
    return keys.any((k) => (k is String)
        ? k.toLowerCase() == HttpHeaders.contentTypeHeader
        : false);
  }

  String? getKeyContentType() {
    if (isEmpty) {
      return null;
    }
    bool present = hasKeyContentType();
    if (present) {
      return keys.firstWhere((e) => (e is String)
          ? e.toLowerCase() == HttpHeaders.contentTypeHeader
          : false);
    }
    return null;
  }
}
