import 'dart:async';

void main(List<String> args) {
  // Timer(Duration(seconds: 5), (() => print("timer finished")));
  // Timer.periodic(Duration(seconds: 5), ((t) => print("Sürekli çalış")));

  Timer.periodic(Duration(seconds: 5), ((timer) {
    if (timer.tick == 3) {
      timer.cancel();
    } else {
      print("çalışmaya devam.. ${timer.tick}");
    }
  }));
}
