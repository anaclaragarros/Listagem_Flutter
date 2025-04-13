class Invoice {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  const Invoice({
    required this.userId,
    required this.id,
    required this.title,
    required this.completed,
  });

  Map<String, dynamic> toMap() {
    return {
      'userId': this.userId,
      'id': this.id,
      'title': this.title,
      'completed': this.completed,
    };
  }

  factory Invoice.fromMap(Map<String, dynamic> map) {
    return Invoice(
      userId: map['userId'] as int,
      id: map['id'] as int,
      title: map['title'] as String,
      completed: map['completed'] as bool,
    );
  }
}
