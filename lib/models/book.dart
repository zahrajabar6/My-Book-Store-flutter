import 'dart:ffi';

class Book {
  final String bookTitle;
  final String bookAuther;
  final String bookDescription;
  final String bookPrice;
  final Double bookRate;
  final String bookCategory;

  Book({
    required this.bookTitle,
    required this.bookAuther,
    required this.bookDescription,
    required this.bookPrice,
    required this.bookRate,
    required this.bookCategory,
  });

  static List categories = [
    ['Popular', 'assets/images/popular.png'],
    ['Drama', 'assets/images/drama.png'],
    ['Fiction', 'assets/images/fiction.png'],
    ['Sci-Fi', 'assets/images/scifi.png'],
    ['Series', 'assets/images/series.png'],
    ['Psychology', 'assets/images/psychology.png'],
    ['Sociology', 'assets/images/sociology.png'],
  ];
}
