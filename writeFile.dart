import 'dart:io';

void main(List<String> args) async {
  var file = File('log.txt');

  await file.writeAsString("String olarak dosyayı sıfırdan oluşturur\n",
      mode: FileMode.write);

  await file.writeAsString("String olarak dosya sonuna ekliyor",
      mode: FileMode.append);
}
