import 'dart:async';
import 'dart:math';

void main() async {
  String quote = await fetchRandomQuote();

  print('Random Quote: $quote');
}

Future<String> fetchRandomQuote() async {
  await Future.delayed(Duration(seconds: 2));

  List<String> quotes = [
    "The only limit to our realization of tomorrow will be our doubts of today. - Franklin D. Roosevelt",
    "Life is what happens when you're busy making other plans. - John Lennon",
    "Success is not final, failure is not fatal: It is the courage to continue that counts. - Winston S. Churchill",
    "The best way to predict the future is to invent it. - Alan Kay",
  ];

  return quotes[Random().nextInt(quotes.length)];
}
