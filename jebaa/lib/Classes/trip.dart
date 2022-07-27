import 'package:flutter/material.dart';
import 'package:jebaa/classes/order.dart';

class Trip {
  String tid;
  String destination;
  String uid; // from the user
  List<Order> orders;
  String status;
  TimeOfDay time;
  Trip({this.tid, this.destination, this.uid, this.orders, this.status, this.time});

  Map<String, dynamic> toMap() {
    return {'tid': tid, 'uid': uid, 'destination': destination, 'orders': orders, 'isClosed': status, 'time': time};
  }

  factory Trip.fromMap(Map<dynamic, dynamic> map) {
    if (map == null) return null;
    return Trip(
        uid: map['uid'],
        tid: map['tid'],
        destination: map['destination'],
        orders: map['orders'],
        status: map['status'],
        time: map['time']);
  }
}
