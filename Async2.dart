void main(List<String> args) async {
  countSeconds(4);
  await printOrderMessage();
}

Future<void> printOrderMessage() async {
  print("Awaiting user order..");
  var order = await fetchUserOder();
  print("Youre order is: $order");
}

Future<String> fetchUserOder() {
  return Future.delayed(const Duration(seconds: 4), (() => 'large latte'));
}

void countSeconds(int s) {
  for (var i = 1; i <= s; i++) {
    Future.delayed(Duration(seconds: i), (() => print(i)));
  }
}
