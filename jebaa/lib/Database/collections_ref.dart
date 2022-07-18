import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseCollections {
  static final _databaseRef = FirebaseFirestore.instance;
  final CollectionReference users = _databaseRef.collection('users');
  final CollectionReference trips = _databaseRef.collection('trip');
  final CollectionReference orders = _databaseRef.collection('orders');
}
