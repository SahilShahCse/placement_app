class FAQModal {
  final String faqId;
  final String question;
  final String answer;
  final String category;
  final bool visibility;
  final int popularity;
  final DateTime createdAt;
  final DateTime updatedAt;

  FAQModal({
    required this.faqId,
    required this.question,
    required this.answer,
    required this.category,
    required this.visibility,
    required this.popularity,
    required this.createdAt,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return {
      'faqId': faqId,
      'question': question,
      'answer': answer,
      'category': category,
      'visibility': visibility,
      'popularity': popularity,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }

  static FAQModal fromMap(Map<String, dynamic> map) {
    return FAQModal(
      faqId: map['faqId'],
      question: map['question'],
      answer: map['answer'],
      category: map['category'],
      visibility: map['visibility'],
      popularity: map['popularity'],
      createdAt: DateTime.parse(map['createdAt']),
      updatedAt: DateTime.parse(map['updatedAt']),
    );
  }
}
