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
    'Popular',
    'Drama',
    'Fiction',
    'Sci-Fi',
    'Psycho',
    'Socio'
  ];
}
