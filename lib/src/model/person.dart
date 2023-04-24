class Person {
  final int id;
  final String firstName;
  final String lastName;
  final String phoneNumber;
  final String email;

  Person({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
    required this.email,
  });
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'firstName': firstName,
      'lastName': lastName,
      'phoneNumber': phoneNumber,
      'email': email,
    };
  }
}