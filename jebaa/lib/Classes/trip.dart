import 'package:flutter/material.dart';

class Trip {
  String tid;
  String destination;
  String uid; // from the user
  List<String> orders;
  String isClosed;
  TimeOfDay time;
  Trip({this.tid, this.destination, this.uid, this.orders, this.isClosed, this.time});

  Map<String, dynamic> toMap() {
    return {'tid': tid, 'uid': uid, 'destination': destination, 'orders': orders, 'isClosed': isClosed, 'time': time};
  }

  factory Trip.fromMap(Map<dynamic, dynamic> map) {
    if (map == null) return null;
    return Trip(
        uid: map['uid'],
        tid: map['tid'],
        destination: map['destination'],
        orders: map['orders'],
        isClosed: map['isClosed'],
        time: map['time']);
  }
}
