import 'dart:convert';
import 'dart:io';

void main(List<String> args) async {
  File file = File("notlar.txt");

  var contents;
  contents = await file.readAsString();
  print(contents);

  contents = await file.readAsLines();
  print(contents[0]);

  Stream stream = file.openRead(3, 35);

  stream.transform(Utf8Decoder()).listen((data) {
    print(data);
  });
}
