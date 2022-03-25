import 'dart:async';

void main(List<String> args) {
  StreamController<int> controller = StreamController<int>();

  Stream stream = controller.stream;

  // stream.listen((value) {
  //   print("Value form controller: $value");
  // });
  StreamSubscription<dynamic> streamSubscription = stream.listen((event) {
    print('Value from controller $event');
  });
  controller.add(12);
}
