void main(List<String> args) {
  print("Olası hatanın adı veya sebebi biliniyorsa");
  try {
    int sonuc = 12 ~/ 0;
    print("Bölüm: $sonuc");
    // ignore: deprecated_member_use
  } on IntegerDivisionByZeroException {
    print("bölen 0 olamaz");
  }

  print("\nHatanın sebebi veya adı bilinmiyorsa");
  try {
    int sonuc = 12 ~/ 0;
    print("bölüm : $sonuc");
  } catch (e) {
    print("Hata çıktı : $e");
  }

  print(
      "\nHatanın sebebi veya adı bilinmiyorsa ve stacktrace'i görmek istiyorsak");
  try {
    int sonuc = 12 ~/ 0;
    print("bölüm : $sonuc");
  } catch (e, s) {
    print("Hata çıktı : $e $s");
  }

  print(
      "\nfinally bloğu hata olduğu halde yapılması gereken işlemlerin tanımlandığı blok");
  try {
    int sonuc = 12 ~/ 0;
    print("bölüm : $sonuc");
  } catch (e) {
    print("Hata çıktı : $e");
  } finally {
    print("finally bloğu çalıştı");
  }

  // Kendi exception sınıfımızı oluşturma
  try {
    paraYatir(-65);
  } catch (e) {
    print("hata: $e");
  }
}

void paraYatir(int miktar) {
  if (miktar < 0) {
    throw ParaYatirmaException();
  } else {
    print("Hesabınıza $miktar tl yatırıldı");
  }
}

class ParaYatirmaException implements Exception {
  String hataGoster() {
    return 'Negatif sayı girdiniz';
  }
}
