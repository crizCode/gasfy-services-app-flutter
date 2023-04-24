class District {
  final int id;
  final String name;
  final String department;

  District({
    required this.id,
    required this.name,
    required this.department,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'department': department,
    };
  }
}