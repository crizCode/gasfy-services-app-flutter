import 'district.dart';
import 'specialization.dart';

class Service {
  final int id;
  final String name;
  final double price;
  final DateTime date;
  final int districtId;
  final int specializationId;
  final int plumberId;

  Service({
    required this.id,
    required this.name,
    required this.price,
    required this.date,
    required this.districtId,
    required this.specializationId,
    required this.plumberId,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'price': price,
      'date': date.toIso8601String(),
      'district_id': districtId,
      'specialization_id': specializationId,
      'plumber_id': plumberId,
    };
  }

  static Service fromMap(Map<String, Object?> map) {
    return Service(
      id: map['id'] as int,
      name: map['name'] as String,
      price: map['price'] as double,
      date: DateTime.parse(map['date'] as String),
      districtId: map['district_id'] as int,
      specializationId: map['specialization_id'] as int,
      plumberId: map['plumber_id'] as int,
    );
  }
}
