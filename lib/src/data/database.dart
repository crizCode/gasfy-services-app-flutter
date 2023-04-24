import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DatabaseProvider extends ChangeNotifier {
  final CollectionReference _districtsCollection =
  FirebaseFirestore.instance.collection('districts');
  final CollectionReference _specializationsCollection =
  FirebaseFirestore.instance.collection('specializations');
  final CollectionReference _plumbersCollection =
  FirebaseFirestore.instance.collection('plumbers');
  final CollectionReference _servicesCollection =
  FirebaseFirestore.instance.collection('services');

  Future<void> close() async {
    // No se necesita cerrar ninguna conexión con Firebase
  }
}