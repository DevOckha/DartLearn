import 'dart:convert';

void main(List<String> args) {
  var araba1 = {
    'model': 2018,
    'marka': 'BMW',
    'renk': 'kırmızı',
  };

  var encodeJson = jsonEncode(araba1);
  print(encodeJson);

  var json1 = """{"model":2018, "marka":"Audi", "renk":"kırmızı"}""";

  var map = jsonDecode(json1);
  print(map);
  print(map['model']);
}
