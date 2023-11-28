// make class Contacs for list of constacs
class Contacs {
  final String name;
  final String imageLink;
  Contacs({required this.name, required this.imageLink}); // constructor

}

// make list of constacs
List<Contacs> constacs() {
  return [
    Contacs(name: "Andi", imageLink: "assets/image2.webp"),
    Contacs(name: "James", imageLink: "assets/image5.webp"),
    Contacs(name: "Rossa", imageLink: "assets/image6.webp"),
    Contacs(name: "Stefanie", imageLink: "assets/image7.webp"),
    Contacs(name: "Arinda", imageLink: "assets/image8.webp"),
    Contacs(name: "Kadek", imageLink: "assets/image9.webp"),
  ];
}
