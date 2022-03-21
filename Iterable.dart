//Dart'ta Iterable, soyut bir sınıftır, yani onu doğrudan somutlaştıramazsınız.
// Ancak, yeni bir Liste veya Küme oluşturarak yeni bir Yinelenebilir oluşturabilirsiniz.

import 'dart:html';

void main(List<String> args) {
  Iterable<int> iterable = [1, 2, 3, 4, 5];
  // int value = iterable[1]; err
  int value = iterable.elementAt(1);

  const iterable2 = ['salad', 'popcorn', 'toast'];
  for (final element in iterable2) {
    print(element);
  }

  Iterable<String> iterable3 = const ['salad', 'apple', 'banana'];
  print("This first element is ${iterable3.first} ");
  print("This last element is ${iterable3.last} ");
  // Bu yöntem, girdi belirli bir koşulu sağlıyorsa true değerini döndüren bir işlev olan bir yüklem geçirmenizi gerektirir
  String element = iterable3.firstWhere((element) => element.length >= 5);

  //Not: Hiçbir öğe test koşulunu karşılamıyorsa ve orElse parametresi sağlanmazsa, firstWhere() bir StateError atar.
  const items = ['salad', 'popcorn', 'toast', 'lasagne'];

  var founItem = items.firstWhere(
    (element) => element.length > 10,
    orElse: (() => 'None!'),
  );

/*
  Checking conditions

  return items.every((item) => item.length >= 5);
  Example: Using any() and every()
  any(): En az bir öğe koşulu sağlıyorsa true değerini döndürür.  
  every(): Tüm öğeler koşulu sağlıyorsa true değerini döndürür
 */
  const items2 = ['salad', 'popcorn', 'toast'];

  if (items2.any((element) => element.contains('a'))) {
    print("At least one item contains a");
  }

  if (items2.every((element) => element.length >= 5)) {
    print("All item have length >= 5");
  }

/* 
  Filtering
  Peki ya belirli bir koşulu sağlayan tüm öğeleri bulmak istiyorsanız? 
  Bunu where() yöntemini kullanarak gerçekleştirebilirsiniz.

  var evenNumbers = numbers.where((number) => number.isEven)


*/

//Mapping
//Yinelenebilirleri map() yöntemiyle eşlemek, her öğeyi yenisiyle değiştirerek öğelerin her birine bir işlev uygulamanıza olanak tanır.
  var numbersByTwo = const [1, 2, 3, 4, 5];

  Iterable<int> output = numbersByTwo.map((e) => e * 2);
  print(output);
}
