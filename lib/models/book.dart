class Book {
  final String bookTitle;
  final String bookAuther;
  final String bookDescription;
  final String bookPrice;
  final double bookRate;
  final String bookCategory;
  final String imgURL;

  Book({
    required this.bookTitle,
    required this.bookAuther,
    required this.bookDescription,
    required this.bookPrice,
    required this.bookRate,
    required this.bookCategory,
    required this.imgURL,
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

  static List books = <dynamic>[
    Book(
        bookTitle: 'All about love',
        bookAuther: 'Bill Hooks',
        bookDescription:
            '"The word love is most often defined as a noun, yet we would all love better if we used it as a verb", writes bell hooks as she comes out fighting and on fire in All About Love. Here, at her most provocative and intensely personal, renowned scholar, cultural critic and feminist bell hooks offers a proactive new ethic for a society bereft with lovelessness--not the lack of romance, but the lack of care, compassion, and unity. People are divided, she declares, by society\'s failure to provide a model for learning to love. As bell hooks uses her incisive mind to explore the question “What is love?” her answers strike at both the mind and heart. Razing the cultural paradigm that the ideal love is infused with sex and desire, she provides a new path to love that is sacred, redemptive, and healing for individuals and for a nation. The Utne Reader declared bell hooks one of the “100 Visionaries Who Can Change Your Life.” All About Love is a powerful, timely affirmation of just how profoundly her revelations can change hearts and minds for the better.',
        bookPrice: '\$4.52',
        bookRate: 4.7,
        bookCategory: 'bookCategory',
        imgURL: 'assets/images/books/all_about_love.jpg'),
    Book(
        bookTitle: 'All about love',
        bookAuther: 'Bill Hooks',
        bookDescription:
            '"The word love is most often defined as a noun, yet we would all love better if we used it as a verb", writes bell hooks as she comes out fighting and on fire in All About Love. Here, at her most provocative and intensely personal, renowned scholar, cultural critic and feminist bell hooks offers a proactive new ethic for a society bereft with lovelessness--not the lack of romance, but the lack of care, compassion, and unity. People are divided, she declares, by society\'s failure to provide a model for learning to love. As bell hooks uses her incisive mind to explore the question “What is love?” her answers strike at both the mind and heart. Razing the cultural paradigm that the ideal love is infused with sex and desire, she provides a new path to love that is sacred, redemptive, and healing for individuals and for a nation. The Utne Reader declared bell hooks one of the “100 Visionaries Who Can Change Your Life.” All About Love is a powerful, timely affirmation of just how profoundly her revelations can change hearts and minds for the better.',
        bookPrice: '\$4.52',
        bookRate: 4.7,
        bookCategory: 'bookCategory',
        imgURL: 'assets/images/books/all_about_love.jpg'),
    Book(
        bookTitle: 'All about love',
        bookAuther: 'Bill Hooks',
        bookDescription:
            '"The word love is most often defined as a noun, yet we would all love better if we used it as a verb", writes bell hooks as she comes out fighting and on fire in All About Love. Here, at her most provocative and intensely personal, renowned scholar, cultural critic and feminist bell hooks offers a proactive new ethic for a society bereft with lovelessness--not the lack of romance, but the lack of care, compassion, and unity. People are divided, she declares, by society\'s failure to provide a model for learning to love. As bell hooks uses her incisive mind to explore the question “What is love?” her answers strike at both the mind and heart. Razing the cultural paradigm that the ideal love is infused with sex and desire, she provides a new path to love that is sacred, redemptive, and healing for individuals and for a nation. The Utne Reader declared bell hooks one of the “100 Visionaries Who Can Change Your Life.” All About Love is a powerful, timely affirmation of just how profoundly her revelations can change hearts and minds for the better.',
        bookPrice: '\$4.52',
        bookRate: 4.7,
        bookCategory: 'bookCategory',
        imgURL: 'assets/images/books/all_about_love.jpg'),
    Book(
        bookTitle: 'All about love',
        bookAuther: 'Bill Hooks',
        bookDescription:
            '"The word love is most often defined as a noun, yet we would all love better if we used it as a verb", writes bell hooks as she comes out fighting and on fire in All About Love. Here, at her most provocative and intensely personal, renowned scholar, cultural critic and feminist bell hooks offers a proactive new ethic for a society bereft with lovelessness--not the lack of romance, but the lack of care, compassion, and unity. People are divided, she declares, by society\'s failure to provide a model for learning to love. As bell hooks uses her incisive mind to explore the question “What is love?” her answers strike at both the mind and heart. Razing the cultural paradigm that the ideal love is infused with sex and desire, she provides a new path to love that is sacred, redemptive, and healing for individuals and for a nation. The Utne Reader declared bell hooks one of the “100 Visionaries Who Can Change Your Life.” All About Love is a powerful, timely affirmation of just how profoundly her revelations can change hearts and minds for the better.',
        bookPrice: '\$4.52',
        bookRate: 4.7,
        bookCategory: 'bookCategory',
        imgURL: 'assets/images/books/all_about_love.jpg')
  ];
}
