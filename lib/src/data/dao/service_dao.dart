import 'package:cloud_firestore/cloud_firestore.dart';

import '../../model/service.dart';

class ServiceDao {
  static const String collectionName = 'services';

  Future<void> insert(Service service) async {
    await FirebaseFirestore.instance
        .collection(collectionName)
        .doc(service.id as String?)
        .set(service.toMap());
  }

  Future<void> update(Service service) async {
    await FirebaseFirestore.instance
        .collection(collectionName)
        .doc(service.id as String?)
        .update(service.toMap());
  }

  Future<void> delete(Service service) async {
    await FirebaseFirestore.instance
        .collection(collectionName)
        .doc(service.id as String?)
        .delete();
  }

  Future<List<Service>> getAll() async {
    final snapshot =
    await FirebaseFirestore.instance.collection(collectionName).get();
    return snapshot.docs.map((doc) => Service.fromMap(doc.data())).toList();
  }
}