import 'package:flutter/cupertino.dart';
import 'package:jebaa/Classes/trip.dart';
import 'package:jebaa/collections_ref.dart';

class DatabaseService extends ChangeNotifier {
  String uid;
  static DatabaseService _instance;
  final FirebaseCollections collections = FirebaseCollections();

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

}
