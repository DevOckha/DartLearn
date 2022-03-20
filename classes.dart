// named constructor

void main() {
  Car c1 = Car.namedConst('E101');
  Car c2 = Car('E202');
  print(c1);
  print(c2);

  Student s1 = Student('Ali', 12);
  print(s1.studentName);
  print(s1.studentAge);
}

class Car {
  String engine;

  Car(this.engine) {
    print('Non-parameterized constructor invoked');
  }

  Car.namedConst(this.engine) {
    print('The engine is: ${engine}');
  }
}

// setters and getters

class Student {
  String name;
  int age;

  Student(this.name, this.age);

  String get studentName {
    return name;
  }

  void set studentName(String newName) {
    this.name = newName;
  }

  void set studentAge(int newAge) {
    if (age <= 0) {
      print('Age should be greater than 0');
    } else {
      this.age = newAge;
    }
  }

  int get studentAge {
    return age;
  }
}

// inheratince Bir sınıf, "extends" anahtar sözcüğünü kullanarak başka bir sınıftan miras alır. Alt sınıflar, yapıcılar dışındaki tüm özellikleri ve yöntemleri üst sınıftan devralır.
//Not − Dart, çoklu kalıtımı desteklemez.

class Root {
  String str = 'Ali';
}

class Child extends Root {}

class Leaf extends Child {}

//Dart – Class Inheritance and Method Overriding

class Parent {
  void m1(int a) {
    print('value of a ${a}');
  }
}

class Child2 extends Parent {
  @override
  void m1(int b) {
    print('Value of b ${b}');
  }
}

// The static Keyword
/*
Statik anahtar kelime, bir sınıfın veri üyelerine, yani alanlara ve yöntemlere uygulanabilir.
Statik bir değişken, program yürütmeyi bitirene kadar değerlerini korur.
*/

class StaticMem {
  static int? num;
  static disp() {
    print('The value of num is ${StaticMem.num}');
  }
}

/* 
Super anahtar sözcüğü, bir sınıfın doğrudan ebeveynine atıfta bulunmak için kullanılır.
Anahtar kelime, bir değişkenin, özelliğin veya yöntemin süper sınıf versiyonuna başvurmak için kullanılabilir. 
*/

class ParentChild {
  String msg = 'message veriable from the parent class';

  void m2(int a) {
    print('value of a ${a} ');
  }
}

class ChildChild extends ParentChild {
  @override
  void m2(int b) {
    print('value of ${b}');
    super.m2(13);
    print(' ${super.msg}');
  }
}
