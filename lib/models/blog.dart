
class Blog {
  final String category;
  final String title;
  final String authorName;
  final String summary;
  final String date;
  final int minToRead; // Changed to int for easier calculation
  final String content;
  final String image;

  Blog({
    required this.category,
    required this.title,
    required this.authorName,
    required this.summary,
    required this.date,
    required this.minToRead,
    required this.content,
    required this.image,
  });

  factory Blog.create({
    required String category,
    required String title,
    required String summary,
    required String content,
    required String image,
    required String authorName,
  }) {
    final int minToRead = (content.split(' ').length / 200).ceil();
    final String date = DateTime.now().toString();

    return Blog(
      category: category,
      title: title,
      authorName: authorName,
      summary: summary,
      date: date,
      minToRead: minToRead,
      content: content,
      image: image,
    );
  }

  factory Blog.fromJson(Map<String, dynamic> json) {
    return Blog(
      category: json['category'],
      title: json['title'],
      authorName: json['authorName'],
      summary: json['summary'],
      date: json['date'],
      minToRead: json['minToRead'],
      content: json['content'],
      image: json['image'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'category': category,
      'title': title,
      'authorName': authorName,
      'summary': summary,
      'date': date,
      'minToRead': minToRead,
      'content': content,
      'image': image,
    };
  }
}
