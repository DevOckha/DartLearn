Future<void> main(List<String> args) async {
  print("Fetching user order...");
  print(await createOrderMessage());
}

// Future<void> fetchUserOrder() {
//   return Future.delayed(const Duration(seconds: 2),
//       (() => throw Exception('Logout failed: user Id is invalid')));
// }

//Example: synchronous functions

Future<String> createOrderMessage() async {
  var order = await fetchUserOrder();
  return 'Your order is: $order';
}

Future<String> fetchUserOrder() =>
    Future.delayed(const Duration(seconds: 2), (() => 'large latte'));
