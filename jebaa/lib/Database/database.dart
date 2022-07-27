import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:jebaa/Classes/local_user.dart';
import 'package:jebaa/Classes/trip.dart';
import 'package:jebaa/Database/collections_ref.dart';

import '../Classes/food.dart';

class DatabaseService extends ChangeNotifier {
  String uid;
  static DatabaseService _instance;
  final FirebaseCollections collections = FirebaseCollections();

  static DatabaseService get instance {
    _instance ??= DatabaseService();

    return _instance;
  }

  Future createUser({@required LocalUser user}) async {
    return await collections.users.doc(user.uid).set(user.toMap(), SetOptions(merge: true));
  }

  Future newTrip(Trip trip) async {
    return await collections.trips.add(trip.toMap());
  }

  Future updateTrip(Trip trip) async {
    return await collections.trips.doc(trip.tid).set(trip.toMap());
  }

  //get trips
  Stream<List<Trip>> get trips {
    return collections.trips.orderBy("status").snapshots().map((map) {
      List<Trip> list = [];
      for (var element in map.docs) {
        list.add(Trip.fromMap(element.data()));
      }
      return list;
    });
  }

  // List<Trip> tripsDocsToList(List<DocumentSnapShot> d) {}
  //tripById

  //add order

  // Future CreateUser{}
  Future<List<Food>> getFoods(String restaurantName) async {
    List<Food> foods = [];
    await collections.food.where('restaurantName', isEqualTo: restaurantName).get().then((value) {
      for (var element in value.docs) {
        foods.add(Food.fromMap(element.data()));
      }
    });
    return foods;
  }
}
