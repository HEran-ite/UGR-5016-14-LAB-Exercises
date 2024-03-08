import 'dart:async';
import 'dart:math';

void main() async {

  String quote = await fetchRandomQuote();
  
  print("Random Quote: $quote");
}

Future<String> fetchRandomQuote() async {
  await Future.delayed(Duration(seconds: 2));
  
  List<String> quotes = [
    "lorem ipsum1",
    "lorem ipsum2",
    "lorem ipsum3",
    "lorem ipsum4",
    "lorem ipsum5",
  ];
  
  Random random = Random();
  int index = random.nextInt(quotes.length);
  
  return quotes[index];
}